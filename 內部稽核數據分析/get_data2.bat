@echo off

REM 監察院政治獻金公開查閱平台 ardata.cy.gov.tw/data/search/advanced
REM 選舉代碼 electionCode 
REM    113101 總統副總統    -> 260158筆
REM    113102 立法委員      -> 188567筆

set count=189

for /l %%i in (1,1,%count%) do (
    echo 第 %%i 次 -^> DATA\立法委員\2024立法委員_%%i.csv
    curl -s "https://ardata.cy.gov.tw/api/v1/search/export/?page=%%i&pageSize=1000&electionCode=113102" -o "DATA\立法委員\2024立法委員_%%i.csv"
    timeout /t 1 /nobreak > nul
)

echo.
echo 指令執行完成!
pause 
