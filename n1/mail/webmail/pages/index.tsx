import Head from 'next/head'
import Image from 'next/image'

export default function Home() {
  return (
    <>
      <Head>
        <title>NordMail</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <div className="flex flex-col gap-8 items-center justify-center h-screen text-center mx-2">
        <div className='flex flex-col gap-2'>
          <h1 className="text-white text-4xl font-bold underline md:text-4xl">
            NordMail
          </h1>
          <p className='text-white text-xl md:text-2xl'>
            All mail services running on {" "}
            <code className='bg-[#333333] px-2'>
              mail.nordstud.io
            </code>
            {" "} <br />
            Please configure your email client with the settings below:
          </p>
        </div>
        <div className='flex flex-col text-white text-lg border border-[#343434] text-left p-2 rounded-xl gap-4 md:text-2xl md:p-4'>
          <div className='flex flex-col gap-2'>
            <h2 className='underline text-xl font-bold md:text-3xl'>
              IMAP
            </h2>
            <p>
              Username: <code className='bg-[#333333] px-1 md:px-2'>&#60;username&#62;@nordstud.io</code> <br />
              Password: <code className='bg-[#333333] px-1 md:px-2 '>&#60;password&#62;</code> <br />
              Server: <code className='bg-[#333333] px-1 md:px-2'>mail.nordstud.io</code> <br />
              Port: <code className='bg-[#333333] px-1 md:px-2'>143 or 993 (SSL)</code> <br />
            </p>
          </div>
          <div className='flex flex-col gap-2'>
            <h2 className='underline text-xl font-bold md:text-3xl'>
              SMTP
            </h2>
            <p>
              Username: <code className='bg-[#333333] px-1 md:px-2'>&#60;username&#62;@nordstud.io</code> <br />
              Password: <code className='bg-[#333333] px-1 md:px-2'>&#60;password&#62;</code> <br />
              Server: <code className='bg-[#333333] px-1 md:px-2'>mail.nordstud.io</code> <br />
              Port: <code className='bg-[#333333] px-1 md:px-2'>25 or 587 (SSL)</code> <br />
            </p>
          </div>
        </div>
      </div>
    </>
  )
}
