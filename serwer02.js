var path = require("path");
const Fs = require('fs');
var express = require("express");
var hbs = require('express-handlebars');
var app = express();
var formidable = require('formidable');
const PORT = process.env.PORT || 80;

let filesAmount = 0;
let uploadedFiles = [];

app.use("/static", express.static(path.join(__dirname, 'static')));
app.set('views', path.join(__dirname, 'views'));         // ustalamy katalog views
app.set('view engine', 'hbs');
app.engine('hbs', hbs({
    defaultLayout: 'main.hbs',
    extname: '.hbs',
    partialsDir: path.join("views", "partials"),
    helpers: {
        getImage: function(type) {
            let parsedType = type.slice(type.indexOf("/"));
            let typePath = `/static/gfx${parsedType}.png`;
            if(Fs.existsSync(path.join(__dirname, typePath)))
                return typePath;
            return '/static/gfx/plain.png';
        }
    }
}));

app.use(express.urlencoded({
    extended: true
}));

app.get("/", function (req, res) {
    let context = {
        subpage: {
            name: "multiupload",
            options: []
        },
        data: []
    };
    res.render('index.hbs', context);   // nie podajemy ścieżki tylko nazwę pliku
});

app.post("/upload", function (req, res) {
    let form = new formidable.IncomingForm({
        multiples: true,
        keepExtensions: true,
        uploadDir: __dirname + "/static/uploads/",
        maxFileSize: 100 * 1024 * 1024
    });
    form.parse(req, async (err, fields, files) => {
        if (err) {
            console.log("Error parsing the files");
            return res.status(400).json({
                status: "Fail",
                message: "There was an error parsing the files",
                error: err,
            });
        }
        if (files.files.length) {
            files.files.forEach((file) => {
                console.log(file)
                uploadedFiles.push({
                    id: filesAmount,
                    path: file.filepath,
                    lastModified: file.lastModifiedDate,
                    type: file.mimetype,
                    name: file.originalFilename,
                    size: file.size
                });
                filesAmount++;
            });
        }
        else {
            console.log(files.files)
            uploadedFiles.push({
                id: filesAmount,
                path: files.files.filepath,
                lastModified: files.files.lastModifiedDate,
                type: files.files.mimetype,
                name: files.files.originalFilename,
                size: files.files.size
            });
            filesAmount++;
        }
        res.redirect("/filemanager");
    });
});

app.get("/filemanager", function (req, res) {
    let context = {
        subpage: {
            name: "filemanager",
            options: [
                {
                    name: "USUŃ DANE O PLIKACH Z TABLICY",
                    href: "/reset"
                }
            ]
        },
        data: uploadedFiles
    };
    console.log(context);
    res.render("filemanager.hbs", context);
})

app.get("/info", function (req, res) {
    let context = {
        subpage: {
            name: "file info",
            options: []
        },
        data: uploadedFiles.find(file => file.id == req.query.id)
    };
    console.log(context);
    res.render("info.hbs", context);
})

app.get("/reset", function(req, res) {
    uploadedFiles = [];
    res.redirect("/filemanager");
});

app.get("/delete", function (req, res) {
    uploadedFiles = uploadedFiles.filter(file => !(file.id == req.query.id));
    res.redirect("/filemanager");
});

app.get("/download", function (req, res) {
    let file = uploadedFiles.find(file => file.id == req.query.id);
    res.download(file.path);
});

app.listen(PORT, function () {
    console.log("start serwera na porcie " + PORT)
});
