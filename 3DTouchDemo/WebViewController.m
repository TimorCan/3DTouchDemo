//
//  WebViewController.m
//  3DTouchDemo
//
//  Created by juxi-ios on 16/3/23.
//  Copyright © 2016年 zhoucan. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (NSArray<id<UIPreviewActionItem>> *)previewActionItems{
    
    //赞
    UIPreviewAction *itemOne = [UIPreviewAction actionWithTitle:@"赞" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
//        [self showHint:@"已赞"];
    }];
    
    //举报
    UIPreviewAction *itemTwo = [UIPreviewAction actionWithTitle:@"举报" style:UIPreviewActionStyleDestructive handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
//        [self showHint:@"举报成功"];
    }];
    
    //收藏
    UIPreviewAction *itemThree = [UIPreviewAction actionWithTitle:@"收藏" style:UIPreviewActionStyleSelected handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
//        [self showHint:@"收藏成功"];
    }];
    
//    [self performSelector:@selector(hideHud) withObject:nil afterDelay:1];
    
    //创建一个组包含操作
    //    UIPreviewActionGroup *group = [UIPreviewActionGroup actionGroupWithTitle:@"" style:UIPreviewActionStyleDefault actions:@[@"",@""]];
    
    return @[itemOne,itemTwo,itemThree];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView * img = [[UIImageView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64)];
    
    img.image = [UIImage imageNamed:@"a.jpg"];

    [self.view addSubview:img];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
