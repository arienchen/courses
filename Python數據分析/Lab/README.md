# LAB 實作
1. [LAB-03 Python Keyword](#lab-03)
2. [LAB-04 字串 str](#lab-04)
3. [LAB-05 格式化字串 f-string, format()](#lab-05)
4. [LAB-06 數值型別](#lab-06)
5. [LAB-07 序列型別 range, tuple, list](#lab-07)
6. [LAB-08 集合 set](#lab-08)
7. [LAB-09 字典 dict](#lab-09)
8. [LAB-10 條件判斷 if-elif-else](#lab-10)
9. [LAB-11 迴圈 for, while, break, continue](#lab-11)
10. [LAB-12 函式 def](#lab-12)
11. [LAB-13 模組 import, from, as](#lab-13)
12. [LAB-14 2024 立法委員選舉資料](#lab-14)
13. [LAB-15 2024 總統選舉資料](#lab-15)
14. [LAB-16 Python 下載網頁](#lab-16)
15. [LAB-17 使用 Pandas 合併 CSV](#lab-17)
16. [LAB-18 產生交易測試資料](#lab-18)
17. [LAB-19 資料及檢視及清理](#lab-19)
18. [LAB-20 班佛定律 Benford's Law](#lab-20)
19. [LAB-21 直方圖及熱度圖](#lab-21)
20. [LAB-22 立法委員選舉結果](#lab-22)
21. [LAB-23 DataFrame Merge & Drill Down](#lab-23)
22. [LAB-24 Open Data 第三方支付公司登記資料](#lab-24)
23. [LAB-25 稽核抽樣](#lab-25)
    
---
## LAB-03 Python Keyword<a id='lab-03'></a>
* 使用 `keyword` 模組，列出 Python 保留字
* `import` 指令
* `for` 迴圈
* 顯示變數(物件)的值或內容
* 使用 `type()` 取得型別
* 使用 `dir()` 列出物件變數及函式
* Jupyter 基本操作
  + 選擇目前程式格(Cell)
  + 執行
  + 重啟 Kernel
  + 清除所有程式格的輸出
  + 儲存為 PDF
--- 
## LAB-04 字串 str<a id='lab-04'></a>
* 字串基本操作
* 大小寫轉換
* 去空白及填入
* 字串搜尋與比對
* 字串取代與拆分
* 格式化
* 其他：左補0、轉換字碼編碼(UTF -> BIG5)

> 有關格式化字串 f-string 或 `format()` 之用法，請參考 LAB-05
---
## LAB-05 格式化字串 f-string , format()<a id='lab-05'></a>
* 基本語法
* 運算及函式調用
* 格式化數值
* 對齊與填充
* 巢狀 f-string
* 日期與時間格式
* 原始字串(避免跳脫字元)
* 運行時計算(lambda)
* 變數名稱自動插入
* 多行 f-string

> 所有日期時間格式，請參考 [ChatGPT](https://chatgpt.com/share/67d26a82-6da0-8009-927b-7f1ed54ac694)
---
## LAB-06 數值型別<a id='lab-06'></a>
* 整數 `int` 
* 浮點數 `float` 
* 複數 `complex`
* 布林值 `bool` 
* 型別轉換
  + 長整數的限制？
  + 整數轉換浮點數的公差
    
> 數值運算子，請參考 [ChatGPT](https://claude.ai/share/6c58ddad-1a79-4dae-a398-72773428faec)
---
## LAB-07 序列型別 range, tuple, list<a id='lab-07'></a>

|型別|可變性|宣告方式|用途|
|---|---|---|---|
|range|否|range(start, stop, step)|產生數列（迴圈）|
|tuple|否|(元素,...) 或 tuple(元素,...)|固定數據存儲（可作為字典鍵）|
|list|是|[元素,...] 或 list(元素,...)|動態數據存儲與操作|

> 一般是以 `list` 作為 `array` 操作，當有大量數值運算時，才會使用如 `numpy.array()`
---
## LAB-08 集合 set<a id='lab-08'></a>
在 Python 中，`set` 是一種無序且不重複的資料集合型別。它**不允許有重複**的元素，並且常常用來進行數學上的集合運算（例如聯集、交集、差集等）

* 宣告
* 新增元素 `add()`
* 刪除元素 `remove()`
* 聯集 `union()` 或 `|`
* 交集 `intersection()` 或 `&`
* 差集 `difference()` 或 `–` 
* 對稱差集 `symmetric_difference()` 或 `^`
* 是否存在 `in` 
* 集合大小 `len()`
* 清空集合 `clear()` 
* 迴圈 `for-in` 
---
## LAB-09 字典 dict<a id='lab-09'></a> 
在 Python 中，`dict`（字典）是一種映射型別（Mapping Type），用來存放鍵值對（key-value pairs），並允許快速查找值

* 宣告 {} , dict(), zip(), dict.fromkeys()
* 訪問及修改
  + 新增 
  + 修改
  + 刪除鍵值 del 或 pop()
  + 合併 update() 或 | 
  + 複製 copy()
  + 清空 clear()
* 迭代(迴圈之使用) for-in
  + key-value
  + keys
  + values
---
## LAB-10 條件判斷 if-elif-else<a id='lab-10'></a>
在 Python 中，`if`、`elif` 和 `else` 用於條件判斷，根據條件的真假來執行不同的程式碼區塊

**基本語法**<br>
```python
if 條件1:
  # 當條件1為 True 時執行的程式碼
elif 條件2:
  # 當條件1為 False 且條件2為 True 時執行的程式碼
else:
  # 當條件1 和 條件2 都為 False 時執行的程式碼
  
```

* 基本 `if-else`
* 多條件 `if-elif-else` 或 `match-case`
* 巢狀條件
* 使用邏輯運算子 `and`, `or`, `not` 
* `if-else` 應成對，搭配 `pass` 用法 

> 好的程式撰寫習慣，`if-else` 應成對出現，避免單一 `if` 沒有 `else` 的情形<br>
```python
if (x):
   # do what should do
else:
   # unexpected, log what happend, or assert
   pass
```
---
## LAB-11 迴圈 for, while, break, continue<a id='lab-11'></a>
* `for` 迴圈： 搭配序列，如：`list`, `tuple`, `range` 或 `set`, `dict`
* `while` 迴圈： 執行至到條件符合 `False` 或 `break`
* `break` 中斷： 退出整個迴圈
* `continue` 繼續： 跳過當前程式區塊，直接進入下一次迴圈
---
## LAB-12 函式 def<a id='lab-12'></a>
在 Python 中，`def` 用於定義函式（Function）

**基本語法**
```python
def 函式名稱(參數1, 參數2, ...):
    """函式說明文件（可選）"""
    # 函式內部程式碼
    return 回傳值（可選）
```

> 有回傳值的函式，稱為 function 

* 簡單函式(無參數)
* 帶參數的函式
* 回傳多個值
* 可變參數(動態參數)
* Lambda(匿名函式)
* 函式作為參數
---
## LAB-13 模組 import, from, as<a id='lab-13'></a>
在 Python 中，`import`、`from` 和 `as` 是用來導入模組或套件的關鍵字

|語法|說明|
|---|---------|
|import 模組|導入整個模組，使用時需加前綴|
|from 模組 import 成員|只導入特定成員，使用時無需前綴|
|from 模組 import *|導入所有成員，容易發生名稱衝突，不建議使用|
|import 模組 as 別名|將模組取別名，適用於名稱較長的模組|
|from 模組 import 成員 as 別名|給特定成員取別名，方便使用|


**建議**  
+ Python 內建模組可沿用，不需別名
+ 第三分模組取別名，以避免名稱衝突

**不建議** 
+ `import *` 導入整個模組
+ 函式或變數取別名，影響其他人檢視程式

* 導入整個模組 import
* 從模組中導入特定函式或變數
* 導入模組內所有函式與變數(不推薦)
* 給模組或函式取別名
---
## LAB-14 2024立法委員選舉資料<a id='lab-14'></a>
* 瀏覽網頁取得 API、URL及查詢參數
* 透過系統內建工具 `curl` 下載檔案
* 以 `tqdm` 顯示下載檔案進程
* `f-string` 應用
* 目錄函式：`os.path.exists`,`os.makedirs`,`os.path.join`, `os.listdir`
* 判斷作業系統：`sys.platform`
* 熟悉 Jupyter 的介面操作

<img width="1520" alt="image" src="https://github.com/user-attachments/assets/264c0e54-52a1-4e68-b6a1-86ab162770a5" />
<br>
<br>
<img width="1512" alt="image" src="https://github.com/user-attachments/assets/52a10252-e2e7-41d3-b5c8-767fc93a99d7" />

---
## LAB-15 2024 總統選舉資料<a id='lab-15'></a>
* 同 LAB-14 
* 帶入不同 electionCode
---
## LAB-16 Python 下載網頁<a id='lab-16'></a>

* 使用 requests.get() 取得網頁內容
* 使用 open() 開新檔籍儲存
* 使用 tqdm 顯示下載進度條

程式範例根據 Claude AI 改寫  

使用之提示詞
> Python 如何將網址下載儲存為檔案，並使用 tqdm 顯示下載進程

* [ChatGPT](https://chatgpt.com/share/67d3829a-253c-8009-93b5-3fb005521fdf)
* [Google Gemini](https://g.co/gemini/share/7910d428b59d)
* [Claude AI](https://claude.ai/share/aba9d3a0-aac0-4e0e-ade5-2befa1f0e3aa)
---
## LAB-17 使用 Pandas 合併 CSV<a id='lab-17'></a>
* 使用 glob.glob(*.csv) 讀取目錄下所有 CSV 檔
* 使用 Pandas.read_csv() 讀取 CSV 檔為 DataFrame
* 使用 Pandas.concat() 合併 DataFrame
* 使用 DataFrame.to_csv() 儲存為 CSV 檔
* 搭配 tqdm 顯示讀檔進程
---
# LAB-18-01 產生交易測試資料<a id='lab-18'></a>
使用 AI 產出交易測試資料   
[Claude AI 生成結果](https://claude.ai/share/56c5df98-8018-4069-9488-19cdb2f6e600)  
[ChatGPT 生成結果](https://chatgpt.com/share/67d3ae88-af20-8009-962a-522bf6aff7d3)  
[Gemini 生成結果](https://g.co/gemini/share/98c8f58be3a6)   

**提示詞**
```
請提供 Python 範例程式產生測試資料，並儲存為 CSV 檔，測試資料欄位有["交易時間","交易主機","交易代碼","交易延遲","回傳碼"]，各欄位說明如下：
1. "交易時間"：格式為 "YYYY-MM-DD hh:mm:ss.SSS" 
2. "交易主機"：值清單為 ["AP1","AP2"]
3. "交易代碼"：值清單為 ["A001","B002","C003","D004"]
4. "交易延遲"：數值格式為 int ，值介於 100 - 9999999
5. "回傳碼"：值清單為 ["0000","X999"]。
請產出 500000 測試資料，其中 
* "交易主機"為亂數分佈
* "交易代碼"之"A001"佔比45%，其他為亂數分佈
* "交易時間"為 "2025-03-12 06:00:00.000" 至 "2025-03-12 18:00:00.000" 
* "交易延遲" 的平均值約為 500 ，中間值約為1000     
* "回傳碼" 為 "0000" 佔比約為 99%
```
---
## LAB-19 資料集檢視及清理<a id='lab-19'></a>
* 資料檔為使用 LAB-17 合併之選舉資料
* 資料筆數及欄位數
* 檢核空值及清理
* 刪除整欄
* 更改欄位名稱
* 欄位值統計(計數)
* 新增自訂計算欄位
* 金額(數值)檢查
* 異常值篩選
* 另存 CSV 或 Excel
---
## LAB-20 班佛定律 Benford's Law<a id='lab-20'></a>

**班佛定律**，也被稱為第一位數法則，是一個關於在許多真實世界數據集中，首位數字出現頻率的觀察。 簡單來說，它指出數字 1 出現為首位數字的機率約為 30%，而數字 9 出現為首位數字的機率則小於 5%。

> 更詳細的說明：
> * 非均勻分佈： 與直覺相反，數字 1 到 9 並非以相同的機率作為數據集中的首位數字。
> * 對數分佈： 班佛定律指出，首位數字 d 出現的機率，可以用以下公式計算： P(d) = log10(1 + 1/d)

* 資料檢視及清理
* 置換空值
* 新增 Python 函式
* 逐筆資料處理
* 折線圖

<img width="366" alt="image" src="https://github.com/user-attachments/assets/86227b14-f717-4372-b390-1b542aa8d6f7" />  
<img width="386" alt="image" src="https://github.com/user-attachments/assets/e6f5b54d-d0ea-49e1-8bf8-213492228afd" />  

---
## LAB-21 直方圖及熱度圖<a id='lab-21'></a>
* 資料為 LAB-18 產生之測試資料
* matplotlib 中文字型設定
* 統計及檢視數值分布
* 直方圖
* 直方圖 + 累計%
* 異常值分析
* 熱度圖

<img width="393" alt="image" src="https://github.com/user-attachments/assets/0029f8d8-2950-4d0a-bab7-2f63e64ca372" />  
<br><br>
<img width="490" alt="image" src="https://github.com/user-attachments/assets/20260e1c-72a5-47e9-88b1-9f58545991ff" />  
<br><br>
<img width="404" alt="image" src="https://github.com/user-attachments/assets/75e06d8f-236e-4dd5-bca3-22ce5052c3a1" />  
<br><br>
<img width="403" alt="image" src="https://github.com/user-attachments/assets/70a006b7-dc9d-488c-b75c-fbace4308239" />  

---
## LAB-22 2024 立法委員選舉結果<a id='lab-22'></a>

1. 資料來源： [中央選舉委員會-選舉及公投資料庫](https://db.cec.gov.tw/ElecTable/Election?type=Legislator) [[下載]](https://db.cec.gov.tw/static/elections/data/attachments/ELC/L0/e06c04a91fcb0bb3f9a563fe93395ad5/e06c04a91fcb0bb3f9a563fe93395ad5.zip)
2. Pandas.read_excel() 讀取 Excel 檔
3. 轉換欄位格式
4. 轉換民國年
5. 新增計算欄位 `年齡`
6. 刪除非必要欄位及更名
7. 檢查資料重複
8. 以年齡區間分群
9. 群組統計
10. 熱度圖 - Seaborn
11. 散點圖 - Seaborn
12. 散點圖 - Seabord + 人機界面
13. 散點圖 - Plotly

<img width="608" alt="image" src="https://github.com/user-attachments/assets/c009fc03-2832-4095-9cfc-68bad9664944" />  
<br><br>
<img width="617" alt="image" src="https://github.com/user-attachments/assets/0a1c8454-8ce2-4835-97d1-0ec1f4a38f11" />  
<br><br>
<img width="462" alt="image" src="https://github.com/user-attachments/assets/f73223af-8e4f-4f3c-bb5a-2b7110ebbe0e" />  
<br><br>
<img width="361" alt="image" src="https://github.com/user-attachments/assets/87f67cd7-623c-4ca8-a843-5974a31bb1bd" />  
<br><br>
<img width="398" alt="image" src="https://github.com/user-attachments/assets/109a9b8b-34a5-4364-b0b3-a07624973ac5" />  

---
## LAB-23 DataFrame Merge & Drill Down <a id='lab-23'></a>

1. 由 Jupyter 檢查套件是否已安裝
2. 設定 Pandas 顯示資料的欄位數及筆數
3. 檢查合併的 KEY 是否重複
4. 合併資料集
5. IPyWidgets人機界面元件
6. Drill Down
7. 使用自訂外部模組

<img width="372" alt="image" src="https://github.com/user-attachments/assets/197285b5-47d2-4232-9f86-ef68c62ffbc1" />  
<br><br>
<img width="377" alt="image" src="https://github.com/user-attachments/assets/ae2299f2-3b31-4af5-a545-cbe9fb8d91e5" />  
<br><br>
<img width="317" alt="image" src="https://github.com/user-attachments/assets/5f25f642-617d-4bfe-8427-accbc9620de0" />  
<br><br>
<img width="305" alt="image" src="https://github.com/user-attachments/assets/49a2089a-0edd-461c-be9c-04d21e6e19ba" />  

## LAB-24 Open Data 第三方支付公司登記資料 <a id='lab-24'></a>

1. 資料來源：政府開放資料平台<br>
  [公司登記(依營業項目別)－第三方支付服務業](https://data.gov.tw/dataset/22184)<br>
  [商業登記(依營業項目別)－第三方支付服務業](https://data.gov.tw/dataset/108381)<br>
2. 資料下載網址：<br>
  公司登記 https://data.gcis.nat.gov.tw/od/file?oid=993D3D8B-3993-4279-9A09-0746EB35062B <br>
  商業登記 https://data.gcis.nat.gov.tw/od/file?oid=702A3D64-EC36-49E4-8605-738033B8B231 <br>
3. 「公司登記」與「商業登記」的區別 -> [Gemini](https://g.co/gemini/share/783116509616)
4. 使用 requests 下載 CSV
5. 資料清理：統編、日期
6. 檢查資料關聯(relationship)
7. 新增計算欄位：縣市
8. 檢查重複
9. 資料分析及mapping轉換
10. 合併資料集
11. 儲存資料清理結果

<img width="1357" alt="image" src="https://github.com/user-attachments/assets/89be2db0-7e64-4c1d-a345-749988ffd9df" />


---
## LAB-25 稽核抽樣 <a id='lab-25'></a>

1. 簡單隨機抽樣（simple random sampling）
2. 系統抽樣（systematic sampling）
3. 分層抽樣（stratified sampling）
4. 整群抽樣（cluster sampling）
5. 使用 DataFrame.smaple() 抽樣
6. 統計抽樣結果
7. 儲存 Excel
