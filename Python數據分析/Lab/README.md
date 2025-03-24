# LAB 實作
1. [LAB-03 Python Keyword](#LAB-03-Python-Keyword)
2. [LAB-04 字串 str](#LAB-04-字串-str)
3. LAB-05 格式化字串 f-string, format()
4. [LAB-06 數值型別](#lab-06-數值型別)
5. LAB-07 序列型別 range, tuple, list
6. [LAB-08 集合 set](#lab-08-集合-set)
7. LAB-09 字典 dict
8. LAB-10 條件判斷 if-elif-else
9. LAB-11 迴圈 for, while, break, continue
10. LAB-12 函式 def
11. LAB-13 模組 import, from, as
12. LAB-14 2024 立法委員選舉資料
13. LAB-15 2024 總統選舉資料
14. LAB-16 Python 下載網頁
15. LAB-17 使用 Pandas 合併 CSV
16. LAB-18-01 產生交易測試資料(Claude AI)
    LAB-18-02 產生交易測試資料(ChatGPT)
    LAB-18-03 產生交易測試資料(Gemini)
17. LAB-19 資料及檢視及清理
18. LAB-20 班佛定律 Benford's Law
19. LAB-21 直方圖及熱度圖
20. LAB-22 立法委員選舉結果
21. LAB-23 DataFrame Merge & Drill Down
    
---
## LAB-03 Python Keyword 
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
# LAB-04 字串 str
* 字串基本操作
* 大小寫轉換
* 去空白及填入
* 字串搜尋與比對
* 字串取代與拆分
* 格式化
* 其他：左補0、轉換字碼編碼(UTF -> BIG5)

> 有關格式化字串 f-string 或 `format()` 之用法，請參考 LAB-05
---
## LAB-05 格式化字串 f-string , format()
* 所有日期時間格式，請參考 [ChatGPT](https://chatgpt.com/share/67d26a82-6da0-8009-927b-7f1ed54ac694)
---
## LAB-06 數值型別
* 數值運算子，請參考 [ChatGPT](https://claude.ai/share/6c58ddad-1a79-4dae-a398-72773428faec)
---
## LAB-07 序列型別 range, tuple, list<a id='LAB-07'></a>

|型別|可變性|宣告方式|用途|
|---|---|---|---|
|range|否|range(start, stop, step)|產生數列（迴圈）|
|tuple|否|(元素,...) 或 tuple(元素,...)|固定數據存儲（可作為字典鍵）|
|list|是|[元素,...] 或 list(元素,...)|動態數據存儲與操作|

* 一般是以 `list` 作為 `array` 操作，當有大量數值運算時，才會使用如 `numpy.array()`
---
## LAB-08 集合 set<a id='LAB-08'></a>
在 Python 中，`set` 是一種無序且不重複的資料集合型別。它**不允許有重複**的元素，並且常常用來進行數學上的集合運算（例如聯集、交集、差集等）
---
## LAB-09 字典 dict 
在 Python 中，`dict`（字典）是一種映射型別（Mapping Type），用來存放鍵值對（key-value pairs），並允許快速查找值
---
## LAB-10 條件判斷 if-elif-else
在 Python 中，`if`、`elif` 和 `else` 用於條件判斷，根據條件的真假來執行不同的程式碼區塊

* 基本語法<br>
  ```python
  if 條件1:
      # 當條件1為 True 時執行的程式碼
  elif 條件2:
      # 當條件1為 False 且條件2為 True 時執行的程式碼
  else:
      # 當條件1 和 條件2 都為 False 時執行的程式碼
      
  ```
  
  
* 好的程式撰寫習慣，`if-else` 應成對出現，避免單一 `if` 沒有 `else` 的情形<br>
  ```python
  if (x):
     # do what should do
  else:
     # unexpected, log what happend, or assert
     pass
  ```
---
## LAB-11 迴圈 for, while, break, continue
---
## LAB-12 函式 def
在 Python 中，`def` 用於定義函式（Function）

**基本語法**
```python
def 函式名稱(參數1, 參數2, ...):
    """函式說明文件（可選）"""
    # 函式內部程式碼
    return 回傳值（可選）
```

有回傳值的函式，稱為 function 
---
## LAB-13 模組 import, from, as
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
---
# LAB-14 2024立法委員選舉資料

* 瀏覽網頁取得 API URL及解析參數
* 透過系統內建工具 curl 下載檔案
* 以 tqdm 顯示下載檔案進程
---
## LAB-15 2024 總統選舉資料
---
## LAB-16 Python 下載網頁

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
## LAB-17 使用 Pandas 合併 CSV
* 使用 glob.glob(*.csv) 讀取目錄下所有 CSV 檔
* 使用 Pandas.read_csv() 讀取 CSV 檔為 DataFrame
* 使用 Pandas.concat() 合併 DataFrame
* 使用 DataFrame.to_csv() 儲存為 CSV 檔
* 搭配 tqdm 顯示讀檔進程
---
# LAB-18-01 產生交易測試資料(Claude AI)
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
## LAB-19 資料集檢視及清理
---
## LAB-20 班佛定律 Benford's Law

**班佛定律**，也被稱為第一位數法則，是一個關於在許多真實世界數據集中，首位數字出現頻率的觀察。 簡單來說，它指出數字 1 出現為首位數字的機率約為 30%，而數字 9 出現為首位數字的機率則小於 5%。

更詳細的說明：

* 非均勻分佈： 與直覺相反，數字 1 到 9 並非以相同的機率作為數據集中的首位數字。
* 對數分佈： 班佛定律指出，首位數字 d 出現的機率，可以用以下公式計算： P(d) = log10(1 + 1/d)
---
## LAB-21 直方圖及熱度圖
---
## LAB-22 2024 立法委員選舉結果

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
---
# LAB-23 DataFrame Merge & Drill Down

1. 由 Jupyter 檢查套件是否已安裝
2. 設定 Pandas 顯示資料的欄位數及筆數
3. 檢查合併的 KEY 是否重複
4. 合併資料集
5. IPyWidgets人機界面元件
6. Drill Down
7. 使用自訂外部模組
