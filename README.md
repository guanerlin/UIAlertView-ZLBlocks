UIAlertView+ZLBlocks 是练习Objective-c runtime写的,使用这个类别可以不使用delegate方式,轻松使用block方式处理UIAlertView各种代理方法,当然考虑到可能会既使用block又实现delegate,(谁知道有什么蹩脚的需求…),封装了既调用block也会判断是否存在delegate,并自动调用.

如果发现问题,请及时pull request
thank you

-delphi9527