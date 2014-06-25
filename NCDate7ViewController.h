#import "Headers.h"

@interface SBTodayTableHeaderView : UIView
{
    UILabel *_dateLabel;
}

+ (id)defaultFont;
+ (id)defaultTextColor;
+ (id)defaultBackgroundColor;
- (void)layoutSubviews;
- (struct CGSize)sizeThatFits:(struct CGSize)arg1;
- (struct CGRect)dateLabelFrame;
- (void)updateContent;
- (id)dateHeaderAttributedString;
- (id)dateHeader;
- (void)dealloc;
- (id)initWithFrame:(struct CGRect)arg1;
@end

@interface NCDate7ViewController : _SBUIWidgetViewController
@property (retain, nonatomic) SBTodayTableHeaderView *date;
@end
