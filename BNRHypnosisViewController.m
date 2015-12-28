//
//  BNRHypnosisViewController.m
//  Hypnosister
//
//  Created by ancool on 15/12/28.
//  Copyright © 2015年 an. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

- (void)loadView
{
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] init];
    self.view = backgroundView;
}

@end
