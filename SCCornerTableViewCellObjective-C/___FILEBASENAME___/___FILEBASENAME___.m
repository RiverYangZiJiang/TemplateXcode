//___FILEHEADER___

#import "___FILEBASENAME___.h"
#import "___FILEBASENAMEASIDENTIFIER___Model.h"
#import "UILabel+CPExtension.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()
/// 
@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

/// 添加控件
- (void)setup {
    [super setup];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    [self.contentView addSubview:self.titleLabel];

}

/// frame布局
- (void)layoutSubviews {
    [super layoutSubviews];
    // 累积收益
    self.titleLabel.top = 18;
    self.titleLabel.left = 0;
    self.titleLabel.width = self.contentView.width;
    self.titleLabel.height = 20;
}

#pragma mark - Getters & Setters
/// 设置模型数据
- (void)setObject:(___FILEBASENAMEASIDENTIFIER___Model *)object {
    [super setObject:object];
}

- (UILabel *)titleLabel{
    if(!_titleLabel) {
        _titleLabel = [UILabel labelWithTextColor:[UIColor colorWithHexString:@"#0E1F33"] backgroundColor:[UIColor clearColor] textFont:[UIFont PingFangSC_RegularOfSize:14] textAlignment:NSTextAlignmentLeft nuberOflines:1];
    }
    return _titleLabel;
}
@end
