Use block other than delegate with UIAlertView


Who need it
If you are using UIAlertView but not want to use delegate,you would like to use blocks to make code more convenient 


How To Use:
* 1.Add UIAlertView+ZLBlocks folder into your project
* 2.Import UIAlertView+ZLBlocks.h file 

 ```
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"hello runtime" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"Other button",nil];

    alert.alertViewClickedButtonAtIndexBlock = ^(UIAlertView *alert ,NSUInteger index) {
        NSLog(@"alert view block called successfully!!!");
    };
    
    [alert show];```

That’s it.