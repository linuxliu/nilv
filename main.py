# coding=utf-8
from flask import Flask
from model import db, InnateDiagram, Yao, NormalDiagram
app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI']='mysql+pymysql://root:1@localhost:3306/db_stream_test'
db.init_app(app)


@app.route('/')
def init():
    ids = []
    idiagram  = InnateDiagram(id=0, name='乾', mnemanic='乾三连')
    ids.append(idiagram)
    idiagram1 = InnateDiagram(id=7, name='坤', mnemanic='坤六断')
    ids.append(idiagram1)
    idiagram2 = InnateDiagram(id=3, name='震', mnemanic='震仰盂')
    ids.append(idiagram2)
    idiagram3 = InnateDiagram(id=6, name='艮', mnemanic='艮覆碗')
    ids.append(idiagram3)
    idiagram4 = InnateDiagram(id=2, name='离', mnemanic='离中虚')
    ids.append(idiagram4)
    idiagram5 = InnateDiagram(id=5, name='坎', mnemanic='坎中满')
    ids.append(idiagram5)
    idiagram6 = InnateDiagram(id=1, name='兑', mnemanic='兑上缺')
    ids.append(idiagram6)
    idiagram7 = InnateDiagram(id=4, name='巽', mnemanic='巽下断')
    ids.append(idiagram7)
    for i in ids:
        db.session.add(i)
    db.session.commit()

    return 'ok',200

if __name__ == '__main__':
    app.run(debug=True)

