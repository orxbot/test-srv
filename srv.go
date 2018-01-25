package srv

import (
	"fmt"
	"gitlab.followme.com/liuxiaobin/test-srv/utils"
)

func Handler() {
	fmt.Println(utils.Plus(1,1))
}
