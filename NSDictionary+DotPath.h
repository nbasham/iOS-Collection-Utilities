#import <Foundation/Foundation.h>

@interface NSDictionary (DotPath)
-(id)objectForPath:(NSString*)dotPath;
-(BOOL)boolForPath:(NSString*)dotPath;
-(int)intForPath:(NSString*)dotPath;
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
-(void)setChar:(char)c forPath:(NSString*)dotPath;
-(void)setFloat:(float)i forPath:(NSString*)dotPath;
-(void)setPoint:(CGPoint)o forPath:(NSString*)dotPath ;
-(void)setSize:(CGSize)o forPath:(NSString*)dotPath;
-(void)setRect:(CGRect)o forPath:(NSString*)dotPath;
@end