// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSPREDEFINEDEVENT_H
#define ANSPREDEFINEDEVENT_H


#import <Foundation/Foundation.h>

@class ANSEvent;
@class ANSAttributeDictionary;

@interface ANSPredefinedEvent : ANSEvent

@property (retain, nonatomic) NSString *predefinedEventName; // ivar: _predefinedEventName
@property (retain, nonatomic) ANSAttributeDictionary *customAttributes; // ivar: _customAttributes
@property (retain, nonatomic) ANSAttributeDictionary *predefinedAttributes; // ivar: _predefinedAttributes


-(id)name;
-(id)dictionaryRepresentation;
-(id)description;
+(id)signUpEventWithMethod:(id)arg0 success:(id)arg1 customAttributes:(id)arg2 ;
+(id)loginEventWithMethod:(id)arg0 success:(id)arg1 customAttributes:(id)arg2 ;
+(id)shareEventWithMethod:(id)arg0 contentName:(id)arg1 contentType:(id)arg2 contentId:(id)arg3 customAttributes:(id)arg4 ;
+(id)inviteEventWithMethod:(id)arg0 customAttributes:(id)arg1 ;
+(id)purchaseEventWithPrice:(id)arg0 currency:(id)arg1 success:(id)arg2 itemName:(id)arg3 itemType:(id)arg4 itemId:(id)arg5 customAttributes:(id)arg6 ;
+(id)levelStartEventWithLevelName:(id)arg0 customAttributes:(id)arg1 ;
+(id)levelEndEventWithLevelName:(id)arg0 score:(id)arg1 success:(id)arg2 customAttributes:(id)arg3 ;
+(id)addToCartEventWithPrice:(id)arg0 currency:(id)arg1 itemName:(id)arg2 itemType:(id)arg3 itemId:(id)arg4 customAttributes:(id)arg5 ;
+(id)startCheckoutEventWithPrice:(id)arg0 currency:(id)arg1 itemCount:(id)arg2 customAttributes:(id)arg3 ;
+(id)ratingEventWithRating:(id)arg0 contentName:(id)arg1 contentType:(id)arg2 contentId:(id)arg3 customAttributes:(id)arg4 ;
+(id)contentViewEventWithName:(id)arg0 contentType:(id)arg1 contentId:(id)arg2 customAttributes:(id)arg3 ;
+(id)searchEventWithQuery:(id)arg0 customAttributes:(id)arg1 ;


@end


#endif