//
//    Copyright (c) 2012 Norman Basham
//    http://www.apache.org/licenses/LICENSE-2.0
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSDictionary (DotPath)
-(id)objectForPath:(NSString*)dotPath;
-(BOOL)boolForPath:(NSString*)dotPath;
-(int)intForPath:(NSString*)dotPath;
-(NSInteger)integerForPath:(NSString*)dotPath;
-(NSUInteger)unsignedIntegerForPath:(NSString*)dotPath;
-(CGFloat)cgFloatForPath:(NSString*)dotPath;
-(int)charForPath:(NSString*)dotPath;
-(float)floatForPath:(NSString*)dotPath;
-(CGPoint)pointForPath:(NSString*)dotPath;
-(CGSize)sizeForPath:(NSString*)dotPath;
-(CGRect)rectForPath:(NSString*)dotPath;

@end

@interface NSMutableDictionary(DotPath)
-(void)setObject:(id)anObject forPath:(NSString*)dotPath;
-(void)setBool:(BOOL)i forPath:(NSString*)dotPath;
-(void)setInt:(int)i forPath:(NSString*)dotPath;
-(void)setInteger:(NSInteger)i forPath:(NSString*)dotPath;
-(void)setUnsignedInteger:(NSUInteger)i forPath:(NSString*)dotPath;
-(void)setCGFloat:(CGFloat)f forPath:(NSString*)dotPath;
-(void)setChar:(char)c forPath:(NSString*)dotPath;
-(void)setFloat:(float)i forPath:(NSString*)dotPath;
-(void)setPoint:(CGPoint)o forPath:(NSString*)dotPath ;
-(void)setSize:(CGSize)o forPath:(NSString*)dotPath;
-(void)setRect:(CGRect)o forPath:(NSString*)dotPath;
@end