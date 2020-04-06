var gulp = require('gulp');
var sass = require('gulp-sass');
var sourcemaps = require('gulp-sourcemaps');

/*gulp.task('sass', function(){
  return gulp.src('www/scss/mystyles.scss')
    .pipe(sass()) // Using gulp-sass
    .pipe(gulp.dest('www/css'))
});
*/


gulp.task('sass', function() {
    return gulp.src('scss/style.scss')
        .pipe(sourcemaps.init())
        .pipe(sass())
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest('css'))
});

gulp.task('watch', function(){
  gulp.watch('scss/style.scss',  gulp.series('sass')); 
  // Other watchers
})