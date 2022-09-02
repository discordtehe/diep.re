// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSREPORT_H
#define CLSREPORT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class CLSInternalReport;
@protocol CLSCrashReport;

@interface CLSReport : NSObject <CLSCrashReport>

 {
    unsigned int _internalKVCounter;
    unsigned int _userKVCounter;
    NSString *_internalCompactedKVFile;
    NSString *_internalIncrementalKVFile;
    NSString *_userCompactedKVFile;
    NSString *_userIncrementalKVFile;
    BOOL _readOnly;
    NSString *_identifer;
    NSString *_bundleVersion;
    NSString *_bundleShortVersionString;
    NSDate *_dateCreated;
    NSDate *_crashedOnDate;
    NSString *_OSVersion;
    NSString *_OSBuildVersion;
    NSNumber *_isCrash;
    NSDictionary *_customKeys;
}


@property (readonly, nonatomic) CLSInternalReport *internalReport; // ivar: _internalReport
@property (readonly, copy, nonatomic) NSString *identifier;
@property (readonly, copy, nonatomic) NSDictionary *customKeys;
@property (readonly, copy, nonatomic) NSString *bundleVersion;
@property (readonly, copy, nonatomic) NSString *bundleShortVersionString;
@property (readonly, copy, nonatomic) NSDate *dateCreated;
@property (readonly, copy, nonatomic) NSString *OSVersion;
@property (readonly, copy, nonatomic) NSString *OSBuildVersion;
@property (readonly, nonatomic) BOOL isCrash;
@property (copy, nonatomic) NSString *userIdentifier;
@property (copy, nonatomic) NSString *userName;
@property (copy, nonatomic) NSString *userEmail;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) NSDate *crashedOnDate;


-(id)initWithInternalReport:(id)arg0 prefetchData:(BOOL)arg1 ;
-(id)initWithInternalReport:(id)arg0 ;
-(struct ? )internalKVStorage;
-(struct ? )userKVStorage;
-(BOOL)canRecordNewValues;
-(void)recordValue:(id)arg0 forInternalKey:(id)arg1 ;
-(void)recordValue:(id)arg0 forUserKey:(id)arg1 ;
-(id)readCustomKeys;
-(void)setObjectValue:(id)arg0 forKey:(id)arg1 ;


@end


#endif