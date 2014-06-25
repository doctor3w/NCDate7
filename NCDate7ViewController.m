#import "NCDate7ViewController.h"
#import <CoreText/CTStringAttributes.h>
#import <objc/runtime.h>

NSBundle *bundle = nil;

@implementation NCDate7ViewController

+ (void)initialize {
	bundle = [[NSBundle bundleForClass:self.class] retain];
}

- (void)loadView {
	[super loadView];

	/*
	 Set up UI here. Called when SpringBoard is launching.
	 Access resources from your bundle via the private method
	 +[UIImage imageNamed:inBundle:], passing in the bundle
	 variable set above.
	*/
	//self.view.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
	self.date = [[objc_getClass("SBTodayTableHeaderView") alloc] initWithFrame:CGRectMake(0,0,320,120)];
	[self.date updateContent];
	[self.view addSubview:self.date];
}

- (CGSize)preferredViewSize {
	// Provide a height by modifying the second parameter.
	return CGSizeMake([super preferredViewSize].width, 120.f);
}

- (void)hostDidPresent {
	[super hostDidPresent];
	// Notification Center was opened.
	[self.date updateContent];
}

- (void)hostDidDismiss {
	[super hostDidDismiss];
	[self.date updateContent];
}

/*- (NSAttributedString *)dateFormattedWithTodaysDate {
	NSString *text = [NSString stringWithFormat:@"%@th",[self.formatter stringFromDate:[NSDate date]]];
	NSDictionary *attrs = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"HelveticaNeue-Thin" size:35], NSFontAttributeName, [UIColor whiteColor], NSForegroundColorAttributeName, nil];
    NSDictionary *subAttrs = [NSDictionary dictionaryWithObjectsAndKeys:@"1", (NSString*)kCTSuperscriptAttributeName, [UIFont fontWithName:@"HelveticaNeue-Light" size:20], NSFontAttributeName, nil];
    NSMutableAttributedString *attributedText = [[[NSMutableAttributedString alloc] initWithString:text attributes:attrs] autorelease];
    [attributedText setAttributes:subAttrs range:NSMakeRange(text.length-2,2)];
    return attributedText;
}*/

@end
