//
//  LLuTextField.m
//  UITextField练习
//
//  Created by ma c on 16/1/22.
//  Copyright © 2016年 lu. All rights reserved.
//

#import "LLuTextField.h"

@interface LLuTextField ()

@property (nonatomic, strong) UIImageView * leftImageView;


@end

@implementation LLuTextField

-(UIImageView *)leftImageView {
    
    if (!_leftImageView) {
        _leftImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 4, 45, 36)];
        _leftImageView.backgroundColor = [UIColor clearColor];
        _leftImageView.contentMode = UIViewContentModeCenter;
    }
    return _leftImageView;
}



-(instancetype)initWithFrame:(CGRect)frame
               leftImageName:(NSString *)imageName {
    
    self.leftImageName = imageName;
    return [self initWithFrame:frame];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        /**
         *  设置xxx
         */
        self.clearButtonMode = UITextFieldViewModeWhileEditing;
        /**
         *
         */
        self.clearsOnBeginEditing = NO;
        /**
         *  设置背景图片
         */
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background"]];
        /**
         *  设置左边view
         */
        self.leftView = self.leftImageView;
        /**
         *  设置左边view一直存在
         */
        self.leftViewMode = UITextFieldViewModeAlways;

        
        
    }
    return self;
}

- (void)setLeftImageName:(NSString *)leftImageName {
    
    _leftImageName = leftImageName;
    self.leftImageView.image = [UIImage imageNamed:leftImageName];
}



@end
