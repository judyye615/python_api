
import re
import HTMLReport
import time, csv, os

base_path = os.path.dirname(os.path.dirname(__file__))  # 项目基本路径
case_path = os.path.join(base_path, 'case')  # 测试脚本所在目录
data_path = os.path.join(base_path, 'data')  # 测试用例所在目录
report_path = os.path.join(base_path, 'report')  # 测试报告所在目录

def get_time():
    t = time.strftime('%Y-%m-%d %H_%M_%S')
    return t

    t = get_time()

    
now = time.strftime(%m_%d_%Y)
if __name__ == '__main__':
    fileName = "parameterTest_%s.html" % now
    file_path = r"./report/%s" % fileName
    fp = open(report_path, 'wb')
    runner = HTMLReport.TestRunner(title='')
    runner.run(testSuite)