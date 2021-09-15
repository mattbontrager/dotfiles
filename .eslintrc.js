module.exports = {
	'env': {
		'browser': true,
		'es2021': true,
		'node': true,
		'mocha': true
	},
	'globals': {
		'$': 'readonly',
		'$$': 'readonly',
		'phoenix': 'readonly',
		'app': 'readonly'
	},
	'extends': 'eslint:recommended',
	'parser': 'babel-eslint',
	'parserOptions': {
		'ecmaVersion': 12,
		'sourceType': 'module'
	},
	'rules': {
		'indent': [
			'error',
			'tab',
			{
				'SwitchCase': 1
			}
		],
		'linebreak-style': [
			'error',
			'unix'
		],
		'quotes': [
			'error',
			'single',
			{
				'avoidEscape': true,
				'allowTemplateLiterals': true
			}
		],
		'semi': [
			'error',
			'always'
		],
		'no-undef': 2,
		'no-unused-vars': 2,
		'arrow-parens': [
			'error',
			'as-needed'
		],
		'no-extra-parens': 2
	}
};
