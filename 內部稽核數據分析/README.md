# 金融研訓院/數位稽核實務班/內部稽核數據分析

[課程簡介](https://www.tabf.org.tw/CourseDetail.aspx?PID=564834) 

## 課程主題：
1. 數位轉型｜數位稽核
2. 稽核｜資料
3. 數據分析及工具
4. 資料清理
5. 稽核方法及技巧

## 課程重點：
* 數位轉型、數位稽核及稽核數位轉型
* 傳統稽核方法的必須改變
* 數據分析 Data Analysis 及工具介紹
* Excel 稽核技巧篇
* 資料清理方法及原則
* 資料處理幫手：Pentaho Data-Integration 工具
* 稽核所需的資料處理技能
* 應用數據分析之查核分享
* Tableau 稽核手法簡單DEMO

## [政府資料開放平台 DATA.GOV.TW](https://data.gov/tw)
* [董監事資料集](https://data.gov.tw/dataset/96731)
* [公司登記經理人資料集](https://data.gov.tw/dataset/139887)
* [公司登記(依營業項目別)－第三方支付服務業](https://data.gov.tw/dataset/22184)
* [商業登記(依營業項目別)－第三方支付服務業](https://data.gov.tw/dataset/108381)

### Windows Batch 範例
```bat
@echo off

REM 公司登記-第三方支付服務業 https://data.gov.tw/dataset/22184
set url1="https://data.gcis.nat.gov.tw/od/file?oid=993D3D8B-3993-4279-9A09-0746EB35062B"
set csv1="公司登記"

REM 商業登記-第三方支付服務業 https://data.gov.tw/dataset/108381
set url2="https://data.gcis.nat.gov.tw/od/file?oid=702A3D64-EC36-49E4-8605-738033B8B231"
set csv2="商業登記"

REM 系統日期
for /f "tokens=1-3 delims=/ " %%a in ('date /t') do set ymd=%%c%%a%%b

curl "%url1%" -o "%csv1%_%ymd%.csv"
curl "%url2%" -o "%csv2%_%ymd%.csv"
```

### Linux Shell 範例
```bash
#!/bin/bash

# 資料下載網址
url=https://data.gcis.nat.gov.tw/od/file?oid=7E5201D9-CAD2-494E-8920-5319D66F66A1 

# 系統日期變數
ymd=$(date +%Y%m%d)

# 下載儲存檔名(+系統日期)
outf=RAWDATA/董監事資料集_$ymd.csv 

# 執行 curl 指令下載及另存
curl "$url" -o "$outf"
```

### Linux Shell 迴圈範例
資料來源：[監察院-政治獻金公開查閱平台](https://ardata.cy.gov.tw/data/search/advanced)  

<img width="1485" alt="image" src="https://github.com/user-attachments/assets/babd2d12-8594-41f2-96c8-6c3e78d11e8c">

* 資料總筆數：260157筆
* 每頁：1000筆
* 共 261頁(迴圈數)
* 於 <img width="136" alt="image" src="https://github.com/user-attachments/assets/0c8ca37b-c7eb-4278-89c6-24f908c9520a"> 按滑鼠右鍵【複製連結網址】，取得資料連結網址 
* 資料連結網址 API 參數
  - page=$i (第幾頁)
  - pageSize=1000(每頁資料筆數)
  - electionCode=113101

```bash
#!/bin/bash

# 指定要執行的次數
count=261

# 使用 for-loop 執行指定次數的 curl
for ((i=1; i<=count; i++))
do
    # 2024 總統大選 260,157 
    url="https://ardata.cy.gov.tw/api/v1/search/export/?page=$i&pageSize=1000&electionYear=113&electionCode=113101"
    echo "Fetching Attempt $i"
    curl "$url" -o DATA/總統大選/2024總統大選_$i.csv 
    sleep 1
done
```

### Windows Batch 迴圈範例
```bat
@echo off

REM 政治獻金查詢平台 https://ardata.cy.gov.tw/data/search/advanced 
REM 指定要執行的次數
set count=189

for /l %%i in (1, 1, %count%) do (
  echo 執行第 %%i 次 curl 指令...
  curl "https://ardata.cy.gov.tw/api/v1/search/export/?page=%%i&pageSize=1000&electionCode=113102&" -o "立法委員\2024立法委員_%%i.csv" 
  timeout /t 1 /nobreak
)

echo.
echo 指令執行完成！
```

## 教材檔案
1. Pentaho Demo: [請款費用](./pentaho/請款費用.ktr)
2. Pentaho Demo: [Top100](./pentaho/TOP100.ktr)
3. Tableau Prep Demo: [請款明細](./tableau/請款明細.tfl)

## 補充資料
1. Tableau Trial License 試用授權
   - [Tableau 官網申請](https://www.tableau.com/products/trial)
2. Tableau Public
   - 限個人使用，非商業用途
   - 下載 https://www.tableau.com/zh-tw/products/public/download
   - [版本比較](https://help.tableau.com/current/pro/desktop/zh-tw/desktop_comparison.htm)
   - 支援的資料源較少，新版已支援可儲存為本機 .twb(不含資料) 或 .twbx(含資料) 
   - 無 Tableau Prep 
   
