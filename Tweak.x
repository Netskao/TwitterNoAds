#import <UIKit/UIKit.h>

@interface T1URTTimelineStatusItemViewModel : NSObject
@property (nonatomic, readonly) BOOL isPromoted;
@end

%hook TFNItemsDataViewAdapterRegistry
- (id)dataViewAdapterForItem:(id)item {
    //Old Ads
    if ([item isKindOfClass:objc_getClass("T1URTTimelineStatusItemViewModel")] && ((T1URTTimelineStatusItemViewModel *)item).isPromoted) {
    return nil;
    }
    //New Ads
    if ([item isKindOfClass:objc_getClass("TwitterURT.URTTimelineGoogleNativeAdViewModel")]) {
    return nil;
    }
    return %orig;
}
%end