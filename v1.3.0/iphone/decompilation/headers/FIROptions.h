// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FIROPTIONS_H
#define FIROPTIONS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCopying;

@interface FIROptions : NSObject <NSCopying>

 {
    NSDictionary *_analyticsOptionsDictionary;
}


@property (retain, nonatomic) NSMutableDictionary *optionsDictionary; // ivar: _optionsDictionary
@property (readonly, nonatomic) NSDictionary *analyticsOptionsDictionary;
@property (readonly, nonatomic) BOOL isAnalyticsCollectionExpicitlySet;
@property (readonly, nonatomic) BOOL isAnalyticsCollectionEnabled;
@property (readonly, nonatomic) BOOL isAnalyticsCollectionDeactivated;
@property (readonly, copy, nonatomic) NSString *libraryVersionID;
@property (nonatomic) BOOL usingOptionsFromDefaultPlist; // ivar: _usingOptionsFromDefaultPlist
@property (readonly, nonatomic) BOOL isMeasurementEnabled;
@property (readonly, nonatomic) BOOL isAnalyticsEnabled;
@property (readonly, nonatomic) BOOL isSignInEnabled;
@property (nonatomic, getter=isEditingLocked) BOOL editingLocked; // ivar: _editingLocked
@property (copy, nonatomic) NSString *APIKey;
@property (copy, nonatomic) NSString *bundleID;
@property (copy, nonatomic) NSString *clientID;
@property (copy, nonatomic) NSString *trackingID;
@property (copy, nonatomic) NSString *GCMSenderID;
@property (copy, nonatomic) NSString *projectID;
@property (copy, nonatomic) NSString *androidClientID;
@property (copy, nonatomic) NSString *googleAppID;
@property (copy, nonatomic) NSString *databaseURL;
@property (copy, nonatomic) NSString *deepLinkURLScheme; // ivar: _deepLinkURLScheme
@property (copy, nonatomic) NSString *storageBucket;


-(id)initInternalWithOptionsDictionary:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(id)initWithContentsOfFile:(id)arg0 ;
-(id)initWithGoogleAppID:(id)arg0 GCMSenderID:(id)arg1 ;
-(void)checkEditingLocked;
-(id)analyticsOptionsDictionaryWithInfoDictionary:(id)arg0 ;
+(id)defaultOptions;
+(void)initialize;
+(id)defaultOptionsDictionary;
+(id)plistFilePathWithName:(id)arg0 ;
+(void)resetDefaultOptions;


@end


#endif