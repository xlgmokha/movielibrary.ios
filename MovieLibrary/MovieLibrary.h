@interface MovieLibrary : NSObject
@property (strong, nonatomic) NSMutableArray *items;
-(void)add:(Movie*)movie;
-(int)total_movies;
-(BOOL)includes:(Movie*)movie;
@end
