const Router = require('@koa/router');
const express = require("express")
const router = new Router();
var app = express();
var bodyParse = require("body-parser")

app.use(bodyParse.urlencoded({ extended: false }));
app.use(express.static("public"))

const pool = require('../db');
const tools = require('../tools/index')

router.get('/get/get_user', async (ctx, res, req) => {
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `select * from users where account = '${request.account}'`;
        console.log(sql)
        const [rows] = await pool.execute(sql);
        ctx.body = {
            code: 0,
            rows
        }
    } catch (error) {
        console.log(error)
        ctx.body = {
            code:1,
            error
        }
    }
})

router.get('/get/set_user', async (ctx, res, req) => {
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `UPDATE users SET avatar='${request.avatar}',name='${request.name}' WHERE account = '${request.account}'`
        console.log(sql)
        const [rows] = await pool.execute(sql);
        console.log(rows)
        ctx.body = {
            code:0,
            rows
        }
    } catch (error) {
        console.log(error)
        ctx.body = {
            code:1,
            error
        }
    }
})
router.get('/get/login', async (ctx) => {
    let request = ctx.query;
    console.log('request:', request);
    try {
        if (request.type == 0) {
            var sql = `select * from users where account = ${request.account} and password = ${request.pwd}`;
            console.log(sql)
            const [rows] = await pool.execute(sql);
            console.log(rows)
            ctx.body = {
                code: 0,
                rows
            }
        } else if (request.type == 1) {

            var getUserSql = `select * from users where account = '${request.account}'`;
            console.log(getUserSql)
            const [getUser] = await pool.execute(getUserSql);
            console.log("getuser:", getUser)
            if (getUser.length > 0) {
                ctx.body = {
                    code: 1,
                    msg: '该账号已注册'
                }
                return
            }
            var sql = "INSERT INTO `users`(`id`, `account`, `password`, `createDate`, `inviteCode`,`gender`) VALUES ('','" + request.account + "','" + request.pwd + "','" + tools.DFormat(new Date()) + "','" + request.inviteCode + "','"+request.gender+"')"
            const [rows] = await pool.execute(sql);
            console.log('[rows]', [rows])
            console.log([rows][0])
            if ([rows][0].affectedRows == 1) {
                ctx.body = {
                    code: 0,
                    msg: '数据插入成功'
                }
                return
            } else {
                ctx.body = {
                    code: 1,
                    msg: '数据插入失败'
                }
                return
            }
        }
    } catch (error) {
        console.log(error)
        ctx.body = {
            code: 1,
            error
        }
    }
})
router.get('/get/register', async (ctx) => {
    let request = ctx.query;
    console.log(request);
    try {

    } catch (error) {
        ctx.body = {
            code:1,
            error
        }
    }
})
router.get('/get/del_user', async (ctx) => {
    let request = ctx.query;
    console.log(request);
    var sql = `select * from users`;
    const [rows] = await pool.execute(sql);
    ctx.body = {
        code:1,
        rows
    }
})

module.exports = router
