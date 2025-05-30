const Router = require('@koa/router');
const express = require("express")
const router = new Router();
var app = express();
var bodyParse = require("body-parser")

app.use(bodyParse.urlencoded({ extended: false }));
app.use(express.static("public"))

const pool = require('../../db');
const tools = require('../../tools/index')

//dating
router.get('/add/dating', async (ctx, res, req) => {
    console.log('正在访问:'+ctx.path)
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `insert into dating(account, vipGrade, name, money, type, country) values('${request.account}','${request.vipGrade}','${request.name}','${request.money}','${request.type}','${request.country}');`
        console.log(sql)
        const [rows] = await pool.execute(sql);
        console.log(rows)
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
router.get('/del/dating', async (ctx, res, req) => {
    console.log('正在访问:'+ctx.path)
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `delete from dating where id = '${request.id}'`
        console.log(sql)
        const [rows] = await pool.execute(sql);
        console.log(rows)
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
router.get('/update/dating', async (ctx, res, req) => {
    console.log('正在访问:'+ctx.path)
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `update dating set account='${request.account}',vipGrade='${request.vipGrade}',
        name='${request.name}',money='${request.money}',type='${request.type}',country='${request.country}' where id = '${request.id}'`
        console.log(sql)
        const [rows] = await pool.execute(sql);
        console.log(rows)
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
router.get('/get/dating', async (ctx, res, req) => {
    console.log('正在访问:'+ctx.path)
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `SELECT id,account, vipGrade, name, money, type, country FROM dating WHERE 1`
        console.log(sql)
        const [rows] = await pool.execute(sql);
        console.log(rows)
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
//square
router.get('/add/square', async (ctx, res, req) => {
    console.log('正在访问:'+ctx.path)
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `insert into square(account, avatar, title, content, source, name,vipGrade,likes,comment,share,date) values('${request.account}','${request.avatar}','${request.title}','${request.content}','${request.source}','${request.name}','${request.vipGrade}','${request.likes}','${request.comment}','${request.share}','${request.date}');`
        console.log(sql)
        const [rows] = await pool.execute(sql);
        console.log(rows)
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
router.get('/del/square', async (ctx, res, req) => {
    console.log('正在访问:'+ctx.path)
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `delete from square where id = '${request.id}'`
        console.log(sql)
        const [rows] = await pool.execute(sql);
        console.log(rows)
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
router.get('/update/square', async (ctx, res, req) => {
    console.log('正在访问:'+ctx.path)
    let request = ctx.query;
    try {
        var sql = `update square set account='${request.account}',vipGrade='${request.vipGrade}',title="${request.title}",content="${request.content}",source='${request.source}',
        name='${request.name}',likes='${request.likes}',comment='${request.comment}',share='${request.share}',date='${request.date}' where id='${request.id}'`
        console.log(sql)
        const [rows] = await pool.execute(sql);
        console.log(rows)
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
router.get('/get/square', async (ctx, res, req) => {
    console.log('正在访问:'+ctx.path)
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `SELECT * FROM square ORDER BY id DESC`
        console.log(sql)
        const [rows] = await pool.execute(sql);
        console.log(rows)
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
//LP
router.get('/add/convension', async (ctx, res, req) => {
    console.log('正在访问:'+ctx.path)
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `insert into convension(account, height, weight, xw, job, city,avatar,jj,video,name,gender) values('${request.account}','${request.height}','${request.weight}','${request.xw}','${request.job}','${request.city}','${request.avatar}','${request.jj}','${request.video}','${request.name}','${request.gender}');`
        console.log(sql)
        const [rows] = await pool.execute(sql);
        console.log(rows)
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
router.get('/del/convension', async (ctx, res, req) => {
    console.log('正在访问:'+ctx.path)
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `delete from convension where id = '${request.id}'`
        console.log(sql)
        const [rows] = await pool.execute(sql);
        console.log(rows)
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
router.get('/update/convension', async (ctx, res, req) => {
    console.log('正在访问:'+ctx.path)
    let request = ctx.query;
    if(request.xw == '') {
        request.xw="1"
    }
    try {
        console.log(request)
        var sql = `update convension set account='${request.account}',height='${request.height}',weight='${request.weight}',xw='${request.xw}',job='${request.job}',city='${request.city}',avatar='${request.avatar}',jj='${request.jj}',video='${request.video}',name='${request.name}' where id='${request.id}'`
        console.log(sql)
        const [rows] = await pool.execute(sql);
        console.log(rows)
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
router.get('/get/convension', async (ctx, res, req) => {
    console.log('正在访问:'+ctx.path)
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `SELECT account, height, weight, xw, job, city, avatar, jj, id, video, name,gender FROM convension WHERE 1`
        console.log(sql)
        const [rows] = await pool.execute(sql);
        console.log(rows)
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
router.get('/get/login', async (ctx, res, req) => {
    console.log('正在访问:'+ctx.path)
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `SELECT account from manage where account='${request.account}' and password='${request.password}'`
        console.log(sql)
        const [rows] = await pool.execute(sql);
        console.log(rows)
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
//-------------------------

router.get('/get/get_user', async (ctx, res, req) => {
    console.log('正在访问:'+ctx.path)
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `select * from users where account = '${request.account}'`;
        console.log(sql)
        const [rows] = await pool.execute(sql);
        console.log(rows)
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
router.get('/get/get_letter', async (ctx, res, req) => {
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `select * from letter`
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
//操作错误
router.get('/get/dataError', async (ctx, res, req) => {
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `update users set dataError = 1 where account = '${request.account}'`
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
router.get('/get/get_order', async (ctx, res, req) => {
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `select makeMoney,date,type,status from orderList where account = '${request.account}'`
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
//私约
router.get('/get/convension', async (ctx, res, req) => {
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `select * from convension limit ${request.pageIndex*5},5`
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
//用户提交申请，待审核
// router.get('/get/get_order', async (ctx, res, req) => {
//     let request = ctx.query;
//     try {
//         console.log(request)
//         var sql = `update users set status = 0 where account = ${request.account}`
//         console.log(sql)
//         const [rows] = await pool.execute(sql);
//         ctx.body = {
//             code: 0,
//             rows
//         }
//     } catch (error) {
//         console.log(error)
//         ctx.body = {
//             code:1,
//             error
//         }
//     }
// })
//修改用户积分
router.get('/get/updateMoney', async (ctx, res, req) => {
    let request = ctx.query;
    try {
        console.log(request)
        var sql = ''
        if(request.type == 0) {
            sql += `update users set money = money + CONVERT(${request.makeMoney}, FLOAT) where account = '${request.account}'`
        } else if (request.type == 1) {
            sql += `update users set money = money + CONVERT(${request.makeMoney}, FLOAT) where account = '${request.account}'`
        }
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
//账单type 0充值 1提现
router.get('/get/set_order', async (ctx, res, req) => {
    let request = ctx.query;
    try {
        console.log(request)
        var sql = ''
        if(request.type == 0) {
            sql = `insert into orderList(account,makeMoney,type,date) values('${request.account}',${request.makeMoney},${request.type},'${tools.DFormat(new Date())}');`
        } else if(request.type == 1) {
            sql = `insert into orderList(account,makeMoney,type,date) values('${request.account}',${request.makeMoney},${request.type},'${tools.DFormat(new Date())}');`
        }
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
//gift
router.get('/get/get_gift', async (ctx, res, req) => {
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `INSERT INTO gift(giftDate) VALUES ('${request.giftDate}')`
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
//main
router.get('/get/likeSquare', async (ctx, res, req) => {
    let request = ctx.query;
    try {
        console.log(request)
        var sql = ''
        if(request.flag == 'true') {
            sql = `update users set likeSquare = REPLACE(likeSquare, '${request.likeSquare}', '') where account = '${request.account}'`;
        } else {
            sql = `update users set likeSquare = CONCAT(likeSquare, ${request.likeSquare}) where account = '${request.account}'`;
        }
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
router.get('/get/get_square', async (ctx, res, req) => {
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `select * from square limit ${request.pageIndex*5},5`;
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
//获取公告
router.get('/get/get_dating', async (ctx, res, req) => {
    console.log('正在访问:'+ctx.path)
    let request = ctx.query;
    try {
        console.log(request)
        var sql = `select * from dating limit 30`;
        console.log(sql)
        const [rows] = await pool.execute(sql);
        console.log(rows)
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
// 制作修改会员卡
router.get('/get/set_user', async (ctx, res, req) => {
    
    let request = ctx.query;
    console.log(request)
    var sql = ""
    if(request.name==undefined){
        sql = `UPDATE users SET avatar='${request.avatar}' WHERE account = '${request.account}'`
    } else if(request.vipStatus==''||request.vipStatus==null){
        sql = `UPDATE users SET  name='${request.name}',vipStatus='制作中',vipGrade='1' WHERE account = '${request.account}'`
    } else {
        sql = `UPDATE users SET name='${request.name}' WHERE account = '${request.account}'`
    }
    try {
        console.log(request)
        
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
            var sql = `select * from users where account = '${request.account}' and password = '${request.pwd}'`;
            var exsitSql = `select * from users where account = '${request.account}'`;
            console.log(sql)
            const [rows] = await pool.execute(sql);
            const [exsitRows] = await pool.execute(exsitSql);
            console.log(rows)
            if(exsitRows.length>0&&rows.length<1) {
                ctx.body = {
                    code: 1,
                    msg:'密码错误'
                }
            } else if(rows.length>0){
                ctx.body = {
                    code: 0,
                    rows
                }
            } else if(exsitRows.length<1) {
                ctx.body = {
                    code: 1,
                    msg:'你还没有注册'
                }
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
