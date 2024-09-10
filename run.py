import time
import pytest
import os

if __name__ == '__main__':

   # cwd = os.getcwd()
   # print(cwd)
   
   # execute test command line
   # python run.py 

    pytest.main(['-s','-q','./','--clean-alluredir','--alluredir','./temps'])
    time.sleep(3)
    
    # allure serve "./temps"
    os.system('allure generate ./temps -o ./reports --clean')
    os.system('allure open ./reports')
    #os.system('allure serve "./temps"')


    

