//
//  ViewController.m
//  3DTouchDemo
//
//  Created by juxi-ios on 16/3/22.
//  Copyright © 2016年 zhoucan. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,UIViewControllerPreviewingDelegate>
@property(nonatomic,strong)UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
    文／chongzone（简书作者）
    原文链接：http://www.jianshu.com/p/018d0c226134
    著作权归作者所有，转载请联系作者获得授权，并标注“简书作者”。
    
    经过授权的应用视图控制器可响应用户不同的按压力量，随着按压力量的增加，会有三个交互阶段：
    1.暗示预览功能可用，会有一个虚化的效果
    2.Peek：重按一下后出现的预览，展示预览的视图以及快捷菜单
    3.Pop：跳转到预览的视图控制器，是在Peek后进一步按压后进入预览的视图控制器
     */
    
    
    self.title = @"ViewC";
    
   [self.view addSubview:[self tableView]];

   
    
    
    
}

#pragma mark -- tableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"模拟第%ld个知识点",indexPath.row];
    
    if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {
        //支持3D touch
        //系统所有cell可实现预览（peek）
        [self registerForPreviewingWithDelegate:self sourceView:cell];
        
    }
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    WebViewController * web =[[WebViewController alloc]init];
   
    [self.navigationController pushViewController:web animated:YES];
}

#pragma mark ---- UIViewControllerPreviewingDelegate


- (nullable UIViewController *)previewingContext:(id <UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location{
    
    WebViewController *web = [[WebViewController alloc]init];
    //坐标转换
    location = [self.tableView convertPoint:location fromView:[previewingContext sourceView]];
//    NSIndexPath *path = [self.tableView indexPathForRowAtPoint:location];
    
 
    
    return web;
    
}



- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit{
    
    
    [self.navigationController pushViewController:viewControllerToCommit animated:YES];
    
}










#pragma mark setter
-(UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource =self;
        
    }
    return _tableView;
}




@end
