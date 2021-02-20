//
//  ViewController.m
//  GJTControlsKit
//
//  Created by kyson on 2021/2/20.
//

#import "ViewController.h"
#import <GJTControlsKit/GJTControlsKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    dispatch_after(3, dispatch_get_main_queue(), ^{
        
        // 弹出QQ的自定义视图
        [GJTTableSelectView addTableSelectViweWithWindowFrame:CGRectMake(self.view.bounds.size.width-100, 64, 150, 200) selectData:@[@"扫一扫",@"加好友",@"创建讨论组",@"发送到电脑",@"面对面快传",@"收钱"] images:@[@"saoyisao",@"jiahaoyou",@"taolun",@"diannao",@"diannao",@"shouqian"] action:^(NSInteger index) {
            NSLog(@"选择%ld",index);
        } animated:YES];
    });
}


@end
