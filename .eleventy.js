module.exports = function (eleventyConfig) {
    eleventyConfig.addPassthroughCopy({'source/components': 'components'});
    eleventyConfig.addPassthroughCopy({'source/css': 'css'});
    eleventyConfig.addPassthroughCopy({'source/fotky': 'fotky'});
    eleventyConfig.addPassthroughCopy({'source/CNAME': 'CNAME'});

    return {
        dir: {
            input: 'source',
            output: 'docs',
            includes: '_includes'
        }
    };
};
