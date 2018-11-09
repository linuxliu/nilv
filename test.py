# coding=utf-8
import requests
from lxml import etree
import math
def get_gua(num):
    gua_seq = [0, 63, 29, 46, 5, 40, 47, 61, 4, 8, 7, 56, 16, 2, 55, 59, 25, 38, 15, 60, 26, 22, 62, 31, 24, 6, 30, 33,
               45, 18, 49, 35, 48, 3, 58, 23, 20, 10, 53, 43, 14, 28, 1, 32, 57, 39, 41, 37, 17, 34, 27, 54, 52, 11, 19,
               50, 36, 9, 44, 13, 12, 51, 21, 42]
    diagram_id = gua_seq[num - 5738]
    url = 'http://baike.fututa.com/a{0}'.format(num)
    try:
        s = requests.get(url, timeout=3.1).content.decode()
        tree = etree.HTML(s)
        # 卦名
        gua_name = tree.xpath('//div[@class="gua_wen"][1]/p[2]/b/text()')
        gua_name = ' '.join(gua_name)
        # # 卦辞
        # words = tree.xpath('//div[@class="gua_wen"][1]/p[2]/text()')
        # words = ' '.join(words)
        # # 象传
        # xiang_words = tree.xpath('//div[@class="gua_wen"][1]/p[3]/text()')
        # xiang_words = ' '.join(xiang_words)
        # #断易天机解
        # duan_yi_jie = tree.xpath('//div[@class="gua_wen"][2]/p[2]/text()')
        # duan_yi_jie = ' '.join(duan_yi_jie)
        # #邵雍解
        # shao_yong_jie = tree.xpath('//div[@class="gua_wen"][3]/p[position() > 1]/text()')
        # # print(name, words, xiang_words, duan_yi_jie, shao_yong_jie)
        # shao_yong_jie = ' '.join(shao_yong_jie)
        # # return (name, words, xiang_words, duan_yi_jie, shao_yong_jie)
        yao = [7, 11, 15, 19, 23, 27]
        i = 1
        for i in yao:
            name = tree.xpath('//div[@class="gua_wen"][{0}]/p[2]/b/text()'.format(i))
            name = ''.join(name).strip('。')
            words = tree.xpath('//div[@class="gua_wen"][{0}]/p[2]/text()'.format(i))
            words = ''.join(words)
            xiang_words = tree.xpath('//div[@class="gua_wen"][{0}]/p[3]/text()'.format(i))
            xiang_words = ''.join(xiang_words)
            shao_yong_jie = tree.xpath('//div[@class="gua_wen"][{0}]/p[2]/text()'.format(i + 1))
            shao_yong_jie = ''.join(shao_yong_jie)
            luck = tree.xpath('//div[@class="gua_wen"][{0}]/p[2]/b/font/text()'.format(i + 1))
            luck = ''.join(luck).strip('：')
            chang_gua = tree.xpath('//div[@class="gua_wen"][{0}]/p[3]/a/text()'.format(i + 3))
            chang_gua = ''.join(chang_gua)
            chang_gua = chang_gua.split('第')[]
            s = "insert into tb_yao(name,diagram_id, inner_seq, words, xiang_words, shaoyong_words, luck, attr, change_id)values({0},{1},{2},{3},{4},{5}, {6}, {7}, {8});".format(name,diagram_id, i, words, xiang_words, shao_yong_jie, luck,  change_id)
            i+= 1
            print(s)
    except Exception as e:
        print(e)



def get_all_gua():
    url_flags = range(5738, 5802)
    diagrams = []
    for i in url_flags:
        diagrams.append(get_gua(i))
    return diagrams


def get_hu(num):
    n_s = num2binary(num)
    ret = int(n_s[1]) << 5
    ret += int(n_s[2]) << 4
    ret += int(n_s[3]) << 3
    ret += int(n_s[2]) << 2
    ret += int(n_s[3]) << 1
    ret += int(n_s[4])
    return ret


def get_cuo(num):
    n_s = num2binary(num)
    ret = int(1 - int(n_s[0])) << 5
    ret += int(1-int(n_s[1])) << 4
    ret += int(1-int(n_s[2])) << 3
    ret += int(1 - int(n_s[3])) << 2
    ret += int(1- int(n_s[4])) << 1
    ret += int(1 - int(n_s[5]))
    return ret

def get_zong(num):
    n_s = num2binary(num)
    b = n_s[::-1]
    # print(n_s, b)
    ret = int(b[0]) << 5
    ret += int(b[1]) << 4
    ret += int(b[2]) << 3
    ret += int(b[3]) << 2
    ret += int(b[4]) << 1
    ret += int(b[5])
    return ret



def num2binary(num):
    if num == 0 or num == 1:
        return '00000{0}'.format(num)
    a = []
    while True:
        s = int(num / 2)
        s1 = num - 2*s
        a.append(str(s1))
        if s == 1:
            a.append(str(s))
            break
        else:
            num = s
    while len(a) < 6:
        a.append(str(0))

    a.reverse()
    return ''.join(a)




if __name__ == '__main__':
    # diagrams = get_all_gua()
    # for i in diagrams:
    #     print(i)
    # for i in range(0, 64):
    #     print('{3}     {0},{1},{2}'.format(get_hu(i),get_cuo(i),get_zong(i), i))
    get_gua(5738)






