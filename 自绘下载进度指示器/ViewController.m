//
//  ViewController.m
//  自绘下载进度指示器
//
//  Created by QingHong on 16/5/12.
//  Copyright © 2016年 QingHong. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *downloadRate;
@property (weak, nonatomic) IBOutlet ProgressView *progressView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)downloadProgressChange:(UISlider *)sender {
    //get value of slider and show
    _downloadRate.text = [NSString stringWithFormat:@"%.2f%%",sender.value * 100];
    _progressView.currentProgress = sender.value;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
