@echo ┌──────────────────────┐
@echo │正準備關閉 BBS 站                           │
@echo ├──────────────────────┤
@echo │從工作管理員清除處理程序。有些程序未必存在，│
@echo │所以若顯示「找不到處理程序」，是正常的訊息。│
@echo └──────────────────────┘

@taskkill /f /im bbsd.exe /t
@taskkill /f /im bguard.exe /t
@taskkill /f /im bhttpd.exe /t
@taskkill /f /im bmtad.exe /t
@taskkill /f /im bnntpd.exe /t
@taskkill /f /im bpop3d.exe /t
@taskkill /f /im gemd.exe /t
@taskkill /f /im xchatd.exe /t
@taskkill /f /im innbbsd.exe /t

@taskkill /f /im account.exe /t
@taskkill /f /im counter.exe /t
@taskkill /f /im cron.exe /t
@taskkill /f /im bbslink.exe /t
@taskkill /f /im camera.exe /t

@taskkill /f /im ipc-daemon2.exe /t

@echo ┌──────────────────────┐
@echo │BBS 站已完成關閉                            │
@echo └──────────────────────┘

@pause
