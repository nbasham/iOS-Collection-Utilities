# iOS Collection Utilities

iOS Collection Utilities extend NSArray and NSDictionary functionality via categories. Underlying storage of primitive values <code>BOOL, char, int, float, CGPoint, CGSize, CGRect</code> adhere to NSCoding so collections can be serialized.
<ul>
		<li><b>NSDictionary+DotPath</b> - create, access and mutate dictionary values using a dot notation e.g. <code>int age = [dict intForPath:@"person.employee.age"]</code>.</li>
		<li><b>NSArray+Primitive</b> - a convenient way to use NSArray with primitive types e.g. <code>int i = [array intAtIndex:0]</code>.</li>
		<li><b>NSDictionary+Primitive</b> - a convenient way to use NSDictionary with primitive types e.g. <code> int i = [dict intForKey:@"int1"];</code>.</li>
</ul>

## NSDictionary+DotPath

NSDictionary+DotPath extends NSDictionary and NSMutableDictionary to provide support for accessing and mutating nested dictionary values using dot notation. This is very similar to the way a JSON object works. This implementation adds support for <code>BOOL, char, int, float, CGPoint, CGSize, CGRect</code> as well as objects. The following example demonstrates <code>int</code> but all the other types work the same way.

Given nested NSDictionary dict:
>
	dict = {
		int = 0;
		dictLevel1 =     {
			int = 1;
			dictLevel2 =         {
				int = 2;
			};
		};
	}

Values can be accessed using a dot notation for the path e.g.
>
	int i = [dict intForPath:@"dictLevel1.dictLevel2.int"]; // i = 2

Values can also be set using a dot notation for the path e.g.
>
	[dict setInt:3 forPath:@"dictLevel1.dictLevel2.newInt"];

Which yields:
>
	dict = {
		int = 0;
		dictLevel1 =     {
			int = 1;
			dictLevel2 =         {
				int = 2;
				newInt = 3;
			};
		};
	}

If a nested dictionary doesn't exist or isn't mutable the dictionary is updated. In this example setting an array (myArray) to and undefined dictionary (dictLevel3) creates the dictionary:
>
    NSArray* myArray = @[@"1", @"2"];
    [dict setObject:myArray forPath:@"dictLevel1.dictLevel2.dictLevel3.a"];

Which yields:
>
	dict = {
		int = 0;
		dictLevel1 =     {
			int = 1;
			dictLevel2 =         {
				int = 2;
				dictLevel3 =             {
					a = [ 1, 2 ];
				};
				newInt = 3;
			};
		};
	}

## NSArray+Primitive

NSArray+Primitive extends NSArray and NSMutableArray to provide support for primitives <code>BOOL, char, int, float, CGPoint, CGSize, CGRect</code>. The following example demonstrates <code>int</code> but all the other types work the same way.

>
    NSMutableArray* array = [NSMutableArray array];
    [array addInt:1]; // array = [1]
    [array addInt:2]; // array = [1, 2]
    int i = [array intAtIndex:0]; // i = 1
    [array swapIndex1:0 index2:1]; // array = [2, 1]
    [array replaceIntAtIndex:0 withInt:3];  // array = [3, 1]
    [array insertInt:4 atIndex:1];
    NSLog(@"%@", [array description]); // console shows [3, 4, 1]
	

## NSDictionary+Primitive

NSDictionary+Primitive extends NSDictionary and NSMutableDictionary to provide support for primitives <code>BOOL, char, int, float, CGPoint, CGSize, CGRect</code>. The following example demonstrates <code>int</code> but all the other types work the same way.

>
    NSMutableDictionary* dict = [NSMutableDictionary dictionary];
    [dict setInt:1 forKey:@"int1"]; // dict = { int1:1 }
    [dict setInt:2 forKey:@"int2"]; // dict = { int1:1, int2:2 }
    int i = [dict intForKey:@"int1"]; // i = 1
    NSLog(@"%@", [dict description]); // console shows { int1 = 1; int2 = 2; }
	
