package routers

import (
	"github.com/felimarod/candidato-bd/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{})
}
