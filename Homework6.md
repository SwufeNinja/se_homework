# Liskov substitution principle

## 什么是里氏替换原则？

里氏替换原则在1994年Barbara Liskov 和 Jeannette Wing发表论文中的描述是：
If S is a declared subtype of T, objects of type S should behave as objects of type T are expected to behave, if they are treated as objects of type T.
从字面上翻译：如果S是T的子类型，对于S类型的任意对象，如果将他们看作是T类型的对象，则对象的行为也理应与期望的行为一致。
换句话说，可以翻译为“子类型（subtype）必须能够替换掉他们的基类型（base type）。”

## 什么是替换？
替换的前提是面向对象语言所支持的多态特性，同一个行为具有多个不同表现形式或形态的能力。以JDK的集合框架为例，List接口的定义为有序集合，List接口有多个派生类，比如大家耳熟能详的ArrayList, LinkedList。那当某个方法参数或变量是List接口类型时，既可以是ArrayList的实现, 也可以是LinkedList的实现，这就是替换。

## 什么是与期望行为一致的替换？
在不了解派生类的情况下，仅通过接口或基类的方法，即可清楚的知道方法的行为，而不管哪种派生类的实现，都与接口或基类方法的期望行为一致。或者说接口或基类的方法是一种契约，使用方按照这个契约来使用，派生类也按照这个契约来实现。这就是与期望行为一致的替换。

## 违反里氏替换原则的危害

1. 反直觉：期望所有子类行为是一致的，但如果不一致可能需要文档记录，或者在代码跑失败后涨此知识；
2. 不可读：如果子类行为不一致，可能需要不同的逻辑分支来适配不同的行为，徒增代码复杂度；
3. 不可用：可能出错的地方终将会出错。