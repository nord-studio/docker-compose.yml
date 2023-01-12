import Head from 'next/head';

export default function Home() {
  return (
    <>
      <Head>
        <title></title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <div className="flex items-center justify-center h-screen text-center mx-2">
        <a href="https://www.youtube.com/watch?v=i2bY1DAKjQw" >
          <code className='text-white hover:underline'>
            What up, son?
          </code>
        </a>
      </div>
    </>
  )
}
