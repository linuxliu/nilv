#coding=utf-8
# 模拟三枚硬币，抛掷6次,硬币字和花，如果字是阳，花是阴 三个字是老阳，两个字是少阴 一个字是少阳  没有字是老阴,这里0代表阳，1代表阴
# 没有变爻，采用本卦的卦辞来解卦，
# 一个变爻  本卦的变爻的爻辞解卦
# 两个变爻  本卦的两个变爻的爻辞解卦，但以上爻的爻辞为主
# 三个变爻  本卦和变卦的卦辞，本卦的卦辞为主，变卦的卦辞为辅助
# 四个变爻  本卦中没有变的爻的爻辞，但以下爻的爻辞为主
# 五个变爻  变卦中不变的那个爻的爻辞
# 六个变爻  变卦的卦辞
#
import random
def get_one_yao():
    one = [random.randint(0, 1), random.randint(0,1), random.randint(0, 1)]
    sum = 0
    ret = None
    for i in one:
        sum += i
    if sum == 0:
        ret = (0, True)
    elif sum == 1:
        ret = (1, False)
    elif sum == 2:
        ret = (0, False)
    elif sum == 3:
        ret = (1, True)
    else:
        pass
    return ret


def get_six_yao():
    six = []
    for i in range(0, 6):
        six.append(get_one_yao())
    return six


def parse_gua(gua):
    if len(gua) !=6:
        return
    ben_gua = 0
    for i in range(0, 6):
        ben_gua += (gua[i][0] << (5 - i))

    chang_gua = 0
    chang_yao = []
    for i in range(0, 6):
        if gua[i][1]:
            chang_gua += ((1 - gua[i][0]) << (5 - i))
            chang_yao.append(i+1)
        else:
            chang_gua += (gua[i][0] << (5 - i))

    print(ben_gua)
    print(chang_gua)
    print(chang_yao)
    chang_yao_len = len(chang_yao)
    if chang_yao_len == 0:
        print('以本卦的卦辞占卜 ', ben_gua)
    elif chang_yao_len == 1:
        print('以本卦变爻的爻辞占卜 ', ben_gua, ' ', chang_yao[0])
    elif chang_yao_len == 2:
        print('以本卦变爻的爻辞占卜 ', ben_gua, '主', chang_yao[1], '辅', chang_yao[0])
    elif chang_yao_len == 3:
        print('以本卦和变卦的卦辞 ', '主 ', ben_gua, '辅 ', chang_gua)
    elif chang_yao_len == 4:
        not_change = []
        for i in range(1, 7):
            if i not in chang_yao:
                not_change.append(i)
        print('以本卦中没有变的两个爻的爻辞下爻的爻辞为主，上爻的爻辞为辅 ', ben_gua, ' 主 ', not_change[0], ' 辅 ', not_change[1])
    elif chang_yao_len == 5:
        not_change = 0
        for i in range(1, 7):
            if i not in chang_yao:
                not_change = i
        print('变卦中不变的爻的爻辞占卜', chang_gua, ' ', not_change)
    elif chang_yao_len == 6:
        print('变卦的卦辞占卜 ', chang_gua)
    else:
        print('error')









if __name__ == '__main__':
    six = get_six_yao()
    print(six)
    parse_gua(six)