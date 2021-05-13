import {
	src,
	dest
} from "gulp";
import plumber from "gulp-plumber";
import uglifyBabel from "gulp-terser";
import babel from "gulp-babel";
import rename from "gulp-rename";
import sourcemap from "gulp-sourcemaps";
import concat from "gulp-concat";

export const jsTask = () => {
	return src([
			"src/js/main.js",
			// "src/js/Cookie.js"
		])
		.pipe(plumber())
		.pipe(sourcemap.init())
		.pipe(babel({
			presets: ["@babel/preset-env"]
		}))
		.pipe(uglifyBabel())
		.pipe(concat("main.min.js"))
		.pipe(sourcemap.write("."))
		.pipe(dest("dist/js"))
}

module.exports = jsTask;
