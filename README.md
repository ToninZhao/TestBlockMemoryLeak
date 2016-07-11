# TestBlockMemoryLeak
### 主要测试OC中block循环引用引起的内存泄漏
### 同时测试了属性中是否需要用weak指向被父视图添加的子视图.测试结果:当用strong修饰时,不会引起循环引用.
