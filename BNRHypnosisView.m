//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by an on 15/12/20.
//  Copyright (c) 2015年 an. All rights reserved.
//

#import "BNRHypnosisView.h"

@interface BNRHypnosisView()

@property (strong, nonatomic) UIColor *circleColor;

@end

@implementation BNRHypnosisView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor =[UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}

-(void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height /2.0;
    
//    float radius = MIN(bounds.size.height, bounds.size.width) / 2.0;
    float MaxRadius = hypot(bounds.size.height, bounds.size.width) / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
//    [path addArcWithCenter:center
//                    radius:radius
//                startAngle:0.0
//                  endAngle:M_PI * 2.0
//                 clockwise:YES];
    
    for (float currentRadius = MaxRadius; currentRadius > 0; currentRadius -=20) {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        //ssss
        [path addArcWithCenter:center
                        radius:currentRadius
                    startAngle:0.0
                      endAngle:M_PI * 2.0
                     clockwise:YES];
    }
    path.lineWidth = 10;
    [[UIColor lightGrayColor] setStroke];
    [path stroke];
    
    
    
    UIImage *testImg = [UIImage imageNamed:@"i-form-settings"];
    
    [testImg drawInRect:CGRectMake(center.x - 50, center.y - 50, 100, 100)];
}

@end
