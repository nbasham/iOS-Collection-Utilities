#import <Foundation/Foundation.h>

@interface NSDictionary (Primitive)

-(BOOL)hasKey:(NSString*)key;

-(BOOL)boolForKey:(NSString*)key;
-(int)intForKey:(NSString*)key;
-(int)charForKey:(NSString*)key;
-(float)floatForKey:(NSString*)key;
-(CGPoint)pointForKey:(NSString*)key;
-(CGSize)sizeForKey:(NSString*)key;
-(CGRect)rectForKey:(NSString*)key;

@end

@interface NSMutableDictionary(Primitive)

-(void)setBool:(BOOL)i forKey:(NSString*)key;
-(void)setInt:(int)i forKey:(NSString*)key;
-(void)setChar:(char)c forKey:(NSString*)key;
-(void)setFloat:(float)i forKey:(NSString*)key;
-(void)setPoint:(CGPoint)o forKey:(NSString*)key;
-(void)setSize:(CGSize)o forKey:(NSString*)key;
-(void)setRect:(CGRect)o forKey:(NSString*)key;

@end