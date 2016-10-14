//
//  ViewController.m
//  UILabel
//
//  Created by MDJ on 2016/10/14.
//  Copyright © 2016年 MDJ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *dLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
#if 1
    UILabel  *dLabel = _dLabel;
    NSString *dLabelString = dLabel.text;
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:dLabelString];
    NSMutableParagraphStyle   *paragraphStyle   = [[NSMutableParagraphStyle alloc] init];
    
    //行间距
    [paragraphStyle setLineSpacing:5.0];
    //段落间距
    [paragraphStyle setParagraphSpacing:10.0];
    //第一行头缩进
    [paragraphStyle setFirstLineHeadIndent:15.0];
    //头部缩进
    //[paragraphStyle setHeadIndent:15.0];
    //尾部缩进
    //[paragraphStyle setTailIndent:250.0];
    //最小行高
    //[paragraphStyle setMinimumLineHeight:20.0];
    //最大行高
    //[paragraphStyle setMaximumLineHeight:20.0];
    
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [dLabelString length])];
    [dLabel setAttributedText:attributedString];
    
    [dLabel setLineBreakMode:NSLineBreakByTruncatingTail];
    
    CGRect dlRect = dLabel.frame;
    [dLabel sizeToFit];
    CGRect dlRectNew = dLabel.frame;
    if(dlRectNew.size.height>dlRect.size.height){
        dlRectNew.size.height = dlRect.size.height;
        [dLabel setFrame:dlRectNew];
    }
#endif
    
}

@end
