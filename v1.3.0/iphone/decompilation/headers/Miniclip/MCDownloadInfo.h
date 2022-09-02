// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCDOWNLOADINFO_H
#define MCDOWNLOADINFO_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCDownloadInfo : NSObject

@property (retain, nonatomic) NSString *url; // ivar: _url
@property (retain, nonatomic) NSString *version; // ivar: _version
@property (retain, nonatomic) NSArray *priorityDownloads; // ivar: _priorityDownloads
@property (nonatomic) CGFloat updateInterval; // ivar: _updateInterval
@property (nonatomic) int numberOfDownloaders; // ivar: _numberOfDownloaders


-(id)initWithURL:(id)arg0 version:(id)arg1 andPriorityDownloads:(id)arg2 ;


@end


#endif