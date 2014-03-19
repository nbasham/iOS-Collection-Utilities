#import <Foundation/Foundation.h>

@interface NSDictionary (Primitive)

-(BOOL)hasKey:(NSString*)key;

-(BOOL)boolForKey:(NSString*)key;
-(int)intForKey:(NSString*)key;
-(NSInteger)integerForKey:(NSString*)key;
-(NSUInteger)unsignedIntegerForKey:(NSString*)key;
-(CGFloat)cgFloatForKey:(NSString*)key;
-(int)charForKey:(NSString*)key;
-(float)floatForKey:(NSString*)key;
-(CGPoint)pointForKey:(NSString*)key;
-(CGSize)sizeForKey:(NSString*)key;
-(CGRect)rectForKey:(NSString*)key;

@end

@interface NSMutableDictionary(Primitive)

-(void)setBool:(BOOL)i forKey:(NSString*)key;
-(void)setInt:(int)i forKey:(NSString*)key;
-(void)setInteger:(NSInteger)i forKey:(NSString*)key;
-(void)setUnsignedInteger:(NSUInteger)i forKey:(NSString*)key;
-(void)setCGFloat:(CGFloat)f forKey:(NSString*)key;
-(void)setChar:(char)c forKey:(NSString*)key;
-(void)setFloat:(float)i forKey:(NSString*)key;
-(void)setPoint:(CGPoint)o forKey:(NSString*)key;
-(void)setSize:(CGSize)o forKey:(NSString*)key;
-(void)setRect:(CGRect)o forKey:(NSString*)key;

@end