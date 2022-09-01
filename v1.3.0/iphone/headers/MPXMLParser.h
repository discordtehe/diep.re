// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPXMLPARSER_H
#define MPXMLPARSER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSXMLParserDelegate;

@interface MPXMLParser : NSObject <NSXMLParserDelegate>



@property (retain, nonatomic) NSMutableArray *elementStack; // ivar: _elementStack
@property (retain, nonatomic) NSMutableString *currentTextContent; // ivar: _currentTextContent
@property (retain, nonatomic) NSError *parseError; // ivar: _parseError
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)dictionaryWithData:(id)arg0 error:(*id)arg1 ;
-(void)parser:(id)arg0 didStartElement:(id)arg1 namespaceURI:(id)arg2 qualifiedName:(id)arg3 attributes:(id)arg4 ;
-(void)parser:(id)arg0 didEndElement:(id)arg1 namespaceURI:(id)arg2 qualifiedName:(id)arg3 ;
-(void)parser:(id)arg0 foundCharacters:(id)arg1 ;
-(void)parser:(id)arg0 parseErrorOccurred:(id)arg1 ;


@end


#endif