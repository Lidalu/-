//
//  LLuTextField.h
//  UITextField练习
//
//  Created by ma c on 16/1/22.
//  Copyright © 2016年 lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LLuTextField : UITextField

@property (nonatomic, copy) NSString * leftImageName;

- (instancetype)initWithFrame:(CGRect)frame leftImageName:(NSString *)imageName;

@end
