# coding=utf-8
from flask_sqlalchemy import SQLAlchemy
db = SQLAlchemy()


class InnateDiagram(db.Model):
    __tablename__ = 'tb_innate_diagram'
    id = db.Column(db.Integer, primary_key=True, autoincrement=False)
    name = db.Column(db.String(1),nullable=False)
    nick_name = db.Column(db.String(1), nullable=False)
    mnemanic = db.Column(db.String(3), nullable=False)

    def __repr__(self):
        return '<InnateDiagram %r %r %r>' %(self.id, self.name, self.mnemanic)


class NormalDiagram(db.Model):
    __tablename__ = 'tb_normal_diagram'
    id = db.Column(db.Integer, primary_key=True, autoincrement=False)
    name = db.Column(db.String(3), nullable=False)
    img_url = db.Column(db.String(128), nullable=True)
    down_id = db.Column(db.Integer,db.ForeignKey('InnateDiagram.id'),nullable=False)
    up_id = db.Column(db.Integer, db.ForeignKey('InnateDiagram.id'),nullable=False)
    words = db.Column(db.String(128), nullable=False)
    hu_id = db.Column(db.Integer, nullable=False)
    cuo_id = db.Column(db.Integer, nullable=False)
    zong_id = db.Column(db.Integer, nullable=False)

    def __repr__(self):
        return '<NormalDiagram %r %r %r>' %(self.id, self.name, self.words)


class Yao(db.Model):
    __tablename__ ='tb_yao'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.String(2), nullable=False)
    diagram_id = db.Column(db.Integer, nullable=False)
    inner_seq = db.Column(db.Integer, nullable=False)
    words = db.Column(db.String(128), nullable=False)
    xiang_words = db.Column(db.String(128), nullable=False)
    shao_yong_jie = db.Column(db.String(128), nullable=False)
    luck = db.Column(db.String(1), nullable=False)
    attr = db.Column(db.Integer, nullable=False)
    chang_id = db.Column(db.INTEGER,nullable=False)

    def __repr__(self):
        return '<Yao %r %r %r %r>' %(self.id, self.diagram_id, self.seg_num, self.words)