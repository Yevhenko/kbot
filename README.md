# kbot - https://t.me/yevhensbot

I implemeted the basic code, it build, the bot starts, but when i write something to telegram i have some difficulties and i dont know how to manage with that, such a message:

kbot startedpanic: telebot: text handler is bad

goroutine 1 [running]:
gopkg.in/tucnak/telebot%2ev2.(*Bot).handle(0xc0000e4180, {0x83f343, 0x5}, 0xc00024e000)
        /go/pkg/mod/gopkg.in/tucnak/telebot.v2@v2.5.0/bot.go:581 +0x125
gopkg.in/tucnak/telebot%2ev2.(*Bot).ProcessUpdate(0xc0000e4180, {0x338e3c86, 0xc00024e000, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, ...})
        /go/pkg/mod/gopkg.in/tucnak/telebot.v2@v2.5.0/bot.go:240 +0x1df
gopkg.in/tucnak/telebot%2ev2.(*Bot).Start(0xc0000e4180)
        /go/pkg/mod/gopkg.in/tucnak/telebot.v2@v2.5.0/bot.go:188 +0x145
github.com/Yevhenko/kbot/cmd.glob..func1(0xc0000e2900?, {0x83f12e?, 0x4?, 0x83f132?})
        /workspaces/kbot/cmd/kbot.go:53 +0x17d
github.com/spf13/cobra.(*Command).execute(0xb75a40, {0xbaa280, 0x0, 0x0})
        /go/pkg/mod/github.com/spf13/cobra@v1.8.0/command.go:987 +0xaa3
github.com/spf13/cobra.(*Command).ExecuteC(0xb75d20)
        /go/pkg/mod/github.com/spf13/cobra@v1.8.0/command.go:1115 +0x3ff
github.com/spf13/cobra.(*Command).Execute(...)
        /go/pkg/mod/github.com/spf13/cobra@v1.8.0/command.go:1039
github.com/Yevhenko/kbot/cmd.Execute()
        /workspaces/kbot/cmd/root.go:33 +0x1a
main.main()
        /workspaces/kbot/main.go:10 +0xf
