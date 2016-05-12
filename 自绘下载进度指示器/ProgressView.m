//
//  ProgressView.m
//  自绘下载进度指示器
//
//  Created by QingHong on 16/5/12.
//  Copyright © 2016年 QingHong. All rights reserved.
//

#import "ProgressView.h"

@implementation ProgressView

- (void)setCurrentProgress:(CGFloat)currentProgress {
    if (_currentProgress != currentProgress) {
        _currentProgress = currentProgress;
        [self setNeedsDisplay];
    }
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    //drawing progress path
    CGFloat radius = rect.size.width * 0.5;
    CGPoint center = CGPointMake(radius, radius);
    CGFloat endAngle = -M_PI_2 + _currentProgress * M_PI * 2;
    UIBezierPath *proPath = [UIBezierPath bezierPathWithArcCenter:center radius:radius - 5 startAngle:-M_PI_2 endAngle:endAngle clockwise:YES];
    proPath.lineWidth = 4.5;
    [[UIColor orangeColor] setStroke];
    proPath.lineJoinStyle = kCGLineJoinRound;
    [proPath stroke];
}

@end
