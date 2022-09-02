// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSFIREBASEANALYTICSBRIDGE_H
#define ANSFIREBASEANALYTICSBRIDGE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ANSFirebaseAnalyticsBridge : NSObject

@property (retain, nonatomic) id *firebaseAnalytics; // ivar: _firebaseAnalytics
@property (retain, nonatomic) NSArray *firebaseReservedKeys; // ivar: _firebaseReservedKeys


-(id)init;
-(id)initWithFirebaseAnalyticsClass:(Class)arg0 ;
-(void)logEvent:(id)arg0 ;
-(void)logCustomEvent:(id)arg0 ;
-(void)logPredefinedEvent:(id)arg0 ;
-(void)logPredefinedEventToFirebaseWithEventName:(id)arg0 parameters:(id)arg1 ;
+(id)firebaseEventNameForAnswersEventName:(id)arg0 predefinedAttributes:(id)arg1 ;
+(BOOL)shouldUseFailedEventName:(id)arg0 predefinedAttributes:(id)arg1 ;
+(id)failedEventName:(id)arg0 ;
+(id)firebaseEventParametersForPredefinedAttributes:(id)arg0 customAttributes:(id)arg1 firebaseEventName:(id)arg2 ;
+(id)combinedParametersFromPredefinedParameters:(id)arg0 customParameters:(id)arg1 ;
+(id)customParametersFromCustomAttributes:(id)arg0 ;
+(id)predefinedParametersFromPredefinedAttributes:(id)arg0 forFirebaseEventName:(id)arg1 ;
+(id)extractBaseParameterDictionaryFromPredefinedAttributes:(id)arg0 withKeyMapping:(id)arg1 ;
+(id)transformedBaseParameters:(id)arg0 forFirebaseEventName:(id)arg1 ;
+(BOOL)isFailableEvent:(id)arg0 ;
+(id)sanitizeKeyName:(id)arg0 ;
+(id)sanitizeEventName:(id)arg0 ;
+(id)sanitizeAttributeName:(id)arg0 ;


@end


#endif