# python的isort包使用文档
isort 是一个Python的实用程序/库，它会按字母顺序对导入(import)的库进行排序，并自动分组。它提供多种使用方式，包括命令行、Python调用等。
## 1.准备
使用isort的前提是拥有python和pip，在该前提下打开cmd，输入“pip install isort”即可。
## 2.如何使用isort
isort有两种使用的方法，一种是从命令行直接针对py文件进行整理，另一种是在Python内导入isort进行整理。

命令行整理方法：
```
isort mypythonfile.py mypythonfile2.py
```
或
```
python -m isort mypythonfile.py mypythonfile2.py
```

在python内使用的方法：
```
import isort
isort.file("pythonfile.py")
```

## 3.对一串代码使用isort的例子
```
from my_lib import Object

import os

from my_lib import Object3

from my_lib import Object2

import sys

from third_party import lib15, lib1, lib2, lib3, lib4, lib5, lib6, lib7, lib8, lib9, lib10, lib11, lib12, lib13, lib14

import sys

from __future__ import absolute_import

from third_party import lib3

print("Hey")
print("yo")
```

使用isort后：
```
from __future__ import absolute_import import os
import sys from third_party import (lib1, lib2, lib3, lib4, lib5, lib6, lib7, lib8,
                        lib9, lib10, lib11, lib12, lib13, lib14)

from my_lib import Object, Object2, Object3 
print("Hey")
print("yo")
```

由此可以看出iosrt整理代码的优势。