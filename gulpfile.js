var gulp = require('gulp');
var jade = require('gulp-jade');
var sass = require('gulp-sass');

gulp.task('jade', function () {
   gulp.src('source/*.jade')
    .pipe(jade())
    .pipe(gulp.dest('.'));
});

gulp.task('sass', function () {
    gulp.src('css/scss/*.scss')
    .pipe(sass())
    .pipe(gulp.dest('css/'));
});
