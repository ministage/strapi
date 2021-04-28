module.exports = ({ env }) => ({
    email: {
        provider: 'sendgrid',
        providerOptions: {
            apiKey: env('SENDGRID_API_KEY'),
        },
        settings: {
            defaultFrom: 'ministage@stage.nl',
            defaultReplyTo: 'ministage@stage.nl',
            testAddress: 'myth.usa538@gmail.com',
        }
    },
});