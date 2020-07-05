var mysql = require('mysql')
const express = require('express');
const bodyparser = require('body-parser');
var app = express();
var session = require('express-session');
app.use(bodyparser.json());
app.use(express.urlencoded({extended: true}));


app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    res.header('Cache-Control', 'no-cache, private, no-store, must-revalidate, max-stale=0, post-check=0, pre-check=0');
    next();
});
app.use(session({
	secret: 'secret',
	resave: true,
	saveUninitialized: true
}));

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "pkp010900",
    database: "Result_analytics"
});
con.connect( function(err) {
    if (err) throw err;
    console.log("connected");
});

var name, ID, pass, branch, sem, email, contact, univ;
var logged_in_user_id

app.get('/', function(req,res){
    res.sendFile(__dirname + '/views/HOME.html');
});

app.get('/register', function(req,res){
    res.sendFile(__dirname + '/views/register.html');
});

app.get('/new_subject', function(req,res){
    res.sendFile(__dirname + '/views/add_subject.html');
});

app.get('/new_exam', function(req,res){
    res.sendFile(__dirname + '/views/add_exam.html');
});

app.get('/enter_marks', function(req,res){
    res.sendFile(__dirname + '/views/add_marks.html');
});

app.get('/sess_charts', function(req,res){
    res.sendFile(__dirname + '/views/charts/sess_charts.html');
});

app.get('/ext_charts', function(req,res){
    res.sendFile(__dirname + '/views/charts/ext_charts.html');
});

app.get('/sem_wise', function(req,res){
    res.sendFile(__dirname + '/views/charts/sem_wise.html');
});

app.get('/sem_avg', function(req,res){
    res.sendFile(__dirname + '/views/charts/sem_avg.html');
});

app.get('/each_sess_avg', function(req,res){
    res.sendFile(__dirname + '/views/charts/each_sess_avg.html');
});

app.get('/login', function(req,res){
    res.sendFile(__dirname + '/views/login.html');
});

app.get('/current_user' , function(req, res) {
    con.query( "SELECT * FROM user WHERE student_id='"+logged_in_user_id+"'", function (err, result, fields) {
        if (err) throw err;
        res.json(result);
    })
});

app.get('/dashboard', function(req,res) {
    if (req.session.loggedIn && logged_in_user_id!="")
    {
        con.query( "SELECT * FROM user WHERE student_id='" + logged_in_user_id + "'", function (err, result, fields) {
            if (err) throw err;
            res.sendFile(__dirname + '/views/dashboard.html');
        })
    }
    else
        res.redirect('/login')
});

app.post('/current_subs' , function(req, res) {
    con.query( "SELECT * FROM subject WHERE branch='"+req.body.branch+"' and batch='"+ req.body.batch + "' and sem='" + req.body.sem+ "'"  , function (err, result, fields) {
        if (err) throw err;
        res.json(result);
    })
});

app.post('/get_exam_id' , function(req, res) {
    con.query( "SELECT * FROM exam WHERE subject_id='"+req.body.sub_id+"' and exam_type='"+ req.body.type + "'"  , function (err, result, fields) {
        if (err) throw err;
        res.json(result);
    })
});

app.post('/register_user', function(req,res){
    // console.log(req.body)
    ID = req.body.ID;
    name = req.body.name;
    pass = req.body.pass;
    branch = req.body.branch;
    sem = req.body.sem;
    email = req.body.email;
    contact = req.body.contact;
    univ = req.body.univ;
    batch = req.body.batch;
    req.session.loggedIn = true
    logged_in_user_id = ID
    var sql = "INSERT INTO user VALUES ('" + ID + "','" + name + "','" + pass + "','"+ branch+"','"+ sem +"','"+ email + "','" + contact + "','" + univ + "','" + batch + "');"
    con.query( sql, function(err, result ){
        if (err) throw err;
        console.log("record inserted");
    })
    res.redirect('/current_user?ID='+ ID);
});

app.post('/login_user', function(req,res){
    // console.log(req.body)
    ID = req.body.ID;
    pass = req.body.pass;
    req.session.loggedIn = true
    if (ID && pass)
    {
        var sql = "SELECT * FROM user WHERE student_id='" + ID + "' AND password='" + pass + "'";
        con.query( sql, function(err, result ){
            console.log(result);
            if ( result.length > 0 )
            {
                logged_in_user_id = ID
                console.log(logged_in_user_id)
            }
            res.send(result)
        });
    }
});

app.get('/logout', function(req,res){
    logged_in_user_id = ""
    req.session.loggedIn = false
    res.redirect('/login');
});

app.post('/add_subject', function(req,res) {
    var sub_ID = req.body.ID
    var sub_name = req.body.name
    var sub_branch = req.body.branch
    var sub_sem = req.body.sem
    var sub_credit = req.body.credit
    var sub_year = req.body.year
    var isViva = req.body.isViva
    var isPrac = req.body.isPrac
    var isLab = req.body.isLab
    var isElective = req.body.isElective
    
    var sql = "INSERT INTO subject VALUES ('" + sub_ID + "','" + sub_name + "','" + sub_branch+"','"+ sub_sem +"','" + isViva + "','"+ isPrac + "','"+ isLab + "','" + isElective + "','" + sub_credit + "','" + sub_year + "');"
    con.query( sql, function(err, result ){
        if (err) throw err;
        console.log(result);
        res.send(result)
    })
})

app.post('/add_exam', function(req,res) {
    var exam_ID = req.body.exam_ID
    var sub_ID = req.body.sub_ID
    var type = req.body.type
    var max_mks = req.body.max_mks
    var exam_year = req.body.exam_year
    var sem = req.body.sem
    
    var sql = "INSERT INTO exam VALUES ('" + exam_ID + "','" + sub_ID + "','" + type +"','"+ max_mks +"','" + exam_year + "','" + sem + "');"
    con.query( sql, function(err, result ){
        if (err) throw err;
        console.log(result);
        res.send(result)
    })
})

app.post('/marks', function(req,res) {
    if (req.session.loggedIn && logged_in_user_id!="")
    {
        var exam_id = req.body.exam_id
        var student_ID = req.body.student_id
        var marks = req.body.marks
        var status = req.body.status
        
        var sql = "INSERT INTO marks VALUES ('" + exam_id + "','" + logged_in_user_id + "','" + marks +"','"+ status +"');"
        con.query( sql, function(err, result ){
            if (err) throw err;
            console.log(result);
            res.send(result)
        })
    }
    else
        res.redirect('/login')
})

app.post('/add_spi', function(req,res) {
    if (req.session.loggedIn && logged_in_user_id!="")
    {
        var student_ID = req.body.ID
        var sem = req.body.sem
        var spi = req.body.spi
        
        var sql = "INSERT INTO student_spi_cpi (student_id, sem, spi) VALUES ('" + logged_in_user_id + "','" + sem + "','" + spi +"');"
        con.query( sql, function(err, result ){
            if (err) throw err;
            console.log(result);
            res.send(result)
        })
    }
    else
        res.redirect('/login')
})

app.post('/generate_sess_charts', function(req,res) {
    var student_ID = req.body.ID
    
    if (req.session.loggedIn && logged_in_user_id!="")
    {
        var sql = "SELECT subject_code,exam_type,marks_obtained,sem FROM exam NATURAL JOIN marks NATURAL JOIN subject WHERE student_id = '"+ logged_in_user_id +"' and exam_type LIKE 'sessional%' and branch = 'CE' ";
        con.query( sql, function(err, result ){
            if (err) throw err;
            console.log(result);
            res.send(result)
        })
    }
    else
        res.redirect('login')
})

app.post('/generate_ext_charts', function(req,res) {
    var student_ID = req.body.ID
    if (req.session.loggedIn && logged_in_user_id!="")
    {
        var sql = "SELECT subject_code,exam_type,marks_obtained,sem,credit FROM exam NATURAL JOIN marks NATURAL JOIN subject WHERE student_id = '"+ logged_in_user_id +"' and exam_type LIKE 'External%' and branch = 'CE' ";
        con.query( sql, function(err, result ){
            if (err) throw err;
            console.log(result);
            res.send(result)
        })
    }
    else
        res.redirect('/login')
})
app.post('/sem_wise_charts', function(req,res) {
    var student_ID = req.body.ID
    
    if (req.session.loggedIn && logged_in_user_id!="")
    {
        var sql = "SELECT * FROM student_spi_cpi WHERE student_id = '"+ logged_in_user_id +"'";
        con.query( sql, function(err, result ){
            if (err) throw err;
            console.log(result);
            res.send(result)
        })
    }
    else
        res.redirect('/login')
})
app.post('/sem_avg_charts', function(req,res) {
    
    if (req.session.loggedIn && logged_in_user_id!="")
    {
        var student_ID = req.body.ID
        var branch = req.body.branch
        
        var sql = "SELECT user.student_id, student_spi_cpi.sem, student_spi_cpi.spi, user.branch FROM user LEFT JOIN student_spi_cpi ON user.student_id = student_spi_cpi.student_id AND user.branch = '" + branch + "'"  ;
        // var sql = "SELECT user.student_id, user.sem, spi FROM user JOIN student_spi_cpi  WHERE branch = '" + branch + "' and user.student_id != '" + student_ID + "'";
        con.query( sql, function(err, result ){
            if (err) throw err;
            console.log(result);
            res.send(result)
        })
    }
    else
        res.redirect('/login')   
})

app.post('/get_my_sess_marks', function(req,res) {
    if (req.session.loggedIn && logged_in_user_id!="")
    {
        var student_ID = req.body.ID
        var sem = req.body.sem
        var branch = req.body.branch
        
        var sql = "SELECT distinct sem,exam_type,exam_id,marks_obtained,subject_code FROM marks NATURAL JOIN exam NATURAL JOIN subject WHERE exam_type LIKE 'Sessional%' AND student_id = '" + logged_in_user_id + "' AND sem=" + sem + " AND branch='" + branch + "'";
        con.query( sql, function(err, result ){
            if (err) throw err;
            console.log(result);
            res.send(result)
        })
    }
    else
        res.redirect('/login')
})

app.post('/get_avg_sess_marks', function(req,res) {
    
    if (req.session.loggedIn && logged_in_user_id!="")
    {
        var student_ID = req.body.ID
        var sem = req.body.sem
        var branch = req.body.branch
        
        var sql = "SELECT distinct student_id,subject_code,exam_type,marks_obtained,sem FROM marks NATURAL JOIN exam NATURAL JOIN subject WHERE exam_type LIKE 'Sessional%' AND sem=" + sem + " AND branch='" + branch + "'";
        con.query( sql, function(err, result ){
            if (err) throw err;
            console.log(result);
            res.send(result)
        })
    }
    else   
        res.redirect('/login')
})

app.listen(3000, function() { 
    console.log('Listening on port 3000..')
});