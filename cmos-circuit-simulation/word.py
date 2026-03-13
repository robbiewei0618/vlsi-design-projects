from docx import Document   #pip install python-docx
import os

path = "./hw1.docx" #老師word路徑
document = Document(path) #讀入檔案
tables = document.tables #獲取檔案中的表格集
for table in tables:
    for i in [1,4]:#從表格第二行開始迴圈讀取表格資料
        base = float(table.cell(3,i).text.replace('*',''))
        #print(base)
        devide = 0.01
        sum = 0
        for j in range(4,len(table.rows)):
            diff = float(table.cell(j,i).text) - base
            result = diff / devide
            devide += 0.01
            sum += result
            table.cell(j,i+1).text = str(result)
            print(result)
        avg = sum / 3
        table.cell(4,i+2).text = str(avg)
        print(avg)
        print()
        #table.cell(i,3).text = text
        #cell(i,0)表示第(i+1)行第1列資料，以此類推
document.save('./output.docx')