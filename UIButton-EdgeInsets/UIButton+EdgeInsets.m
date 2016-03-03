//
//  UIButton+EdgeInsets.m
//  SPCard
//
//  Created by smallpay on 16/3/3.
//  Copyright © 2016年 star. All rights reserved.
//

#import "UIButton+EdgeInsets.h"

@implementation UIButton(EdgeInsets)
-(void)leftImageRightTitleForNormal:(float)imageLeftPading imageTitleDis:(float)imageTitleDis image:(UIImage *)image title:(NSString *)title
{
    [self setImageEdgeInsets:UIEdgeInsetsZero];
    [self setTitleEdgeInsets:UIEdgeInsetsZero];
    self.clipsToBounds = TRUE;
    CGRect frame = self.frame;
    float titleWidth = [title sizeWithFont:self.titleLabel.font].width;
    float titleLeftDis = imageTitleDis;
    
    [self setImageEdgeInsets:UIEdgeInsetsMake(0, imageLeftPading, 0, frame.size.width - image.size.width - imageLeftPading)];
    [self setTitleEdgeInsets:UIEdgeInsetsMake(0, titleLeftDis, 0,frame.size.width - titleWidth - titleLeftDis - ( image.size.width + imageLeftPading))];
    
    [self setTitle:title forState:UIControlStateNormal];
    [self setImage:image forState:UIControlStateNormal];
}
@end
