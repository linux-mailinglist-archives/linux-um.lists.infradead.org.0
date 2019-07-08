Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 140B862CB7
	for <lists+linux-um@lfdr.de>; Tue,  9 Jul 2019 01:35:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4cylDUDcIfMdM9fI0TR6ReoAoAYB4oiBFqU5gbfEsc4=; b=AdOQU46w2XJqNr
	qGUQEUvgtHK8btl8K48Tr0Pk8Ha+8fTD9o8hz6s8hBpT8lrCliMSx1Nbff+UNfAeYsH/mPipnFp/g
	MWaeExLSsdWUvgEXFqBr8gAJygDfvMmtn4JMVghY6L3AicCnHmOl58tmPd3IqoqS+VnuRoUxCRGWk
	SRxKNLPWwiorLAIMVKfiTmQI6vR7rIcrN6OV5o/b8Ih48PNtG4U8eVRvoDd11kmq+73dekBv64EmL
	sqHjwTiw19iVbHqqc7zOyPQa4DNWUSacmBMAH+vOXO/ONIWLfCPIdY5S1uqN9rA491nuYBSFa7Y8Y
	faHotdrZ/fpbZ4AitugA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkd9x-0003sw-UZ; Mon, 08 Jul 2019 23:35:01 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkd9u-0003rw-TI
 for linux-um@lists.infradead.org; Mon, 08 Jul 2019 23:35:00 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so9779605wrr.4
 for <linux-um@lists.infradead.org>; Mon, 08 Jul 2019 16:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+0bgA4UqbyynY1WKuo34XLnfT2RL8oF6dGSsO++vmwI=;
 b=Vvu+7XyZ+bf18JzhxWs9WUla5B97kN6JNUGK09wQnbC1To+ikzJLjWemzYQ4bSdXem
 Lb4Ujrcwm/h5eSGI7UR+HmJu9labaWTTr2uGAMIQle4ZAoZT+/Rr04O/5fXMa+UDK/dI
 PiWmvqDOuBeRwnaNj0eFrE7zYpPFf5ZW5v1/snESkLUrZhzUeLNH4C7U1TAT94jY3ioz
 eEbjqFsIRgjTDidMp1LOdKzZIEzJRV4P4q40BE/P564YjPoiVk+St3f2/qGgJ0XbufeM
 E4LGboUMF+nD44IlGbVNDieKQG3KCLdUF/egpt+dZ1xlDy4X/3SK1jXeVQiIZHm6dFjh
 zhQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+0bgA4UqbyynY1WKuo34XLnfT2RL8oF6dGSsO++vmwI=;
 b=pTUkqWw+yi3tlDVgh5XgyisC+2rXWV/WGnjgxU7H+bPw6CkMNQHuXgUHBdl5Hmtcol
 tkXRhVeQPw6fp/CpwYcnkLlrvw/XjQzXEfqZ0dT1DSCEA/IlnMxvdQE/VhqMvhqrRCz5
 2izAtBuyg7EA0fAs0gVq5okEBHDmVqratjEBg0+3JYRQ09hUCHmrbvJzYJQH6578Y0sy
 tRL/S6TxfHB1thpEcdM7OQy+itp9NApPit1fQEKZ2nxvjO/wZ2A7jspbfoKbVsnfY8wX
 bxgxz3dj6RbpRR0EVpoSCHWOslEoTMsXT7WD0T9mSG7fOApBruqEjHiaLcpeslPvRmSD
 gUCw==
X-Gm-Message-State: APjAAAUswo6QiZqzomwY6kvxnc4xQFO7i1mKecwzEW7ylfdX6IayZCp9
 CyFPJOi9dijBc8Flh+aSrmNZJgAjQrfP7nAw4f2X
X-Google-Smtp-Source: APXvYqy2agX+h3NF02X+WujT1yk9yb+IABwJhy8IpnbR3/useLGvEwjfJj5ObeDsKZRewf4wva8AmF6fHX7xEyn/0ZQ=
X-Received: by 2002:a5d:4ec1:: with SMTP id s1mr19532947wrv.19.1562628896307; 
 Mon, 08 Jul 2019 16:34:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190704003615.204860-1-brendanhiggins@google.com>
 <20190704003615.204860-19-brendanhiggins@google.com>
 <20190705204810.GE19023@42.do-not-panic.com>
 <CAFd5g44j7ECQorYLnDQadAaj+yBki98kFjmjejn+3W4eHtqGDA@mail.gmail.com>
 <CAAXuY3q1==RvAiw+gw5kfFJmjdR9JEUnnxou4Sv0POd88aD41w@mail.gmail.com>
In-Reply-To: <CAAXuY3q1==RvAiw+gw5kfFJmjdR9JEUnnxou4Sv0POd88aD41w@mail.gmail.com>
From: Iurii Zaikin <yzaikin@google.com>
Date: Mon, 8 Jul 2019 16:34:20 -0700
Message-ID: <CAAXuY3ov7s28BQ0VxzkfAHR6NZiBq-YfnJ_510VN22DMhEyCBg@mail.gmail.com>
Subject: Re: [PATCH v6 18/18] MAINTAINERS: add proc sysctl KUnit test to PROC
 SYSCTL section
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_163458_974953_E933CEFE 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -14.4 (--------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-14.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Petr Mladek <pmladek@suse.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 shuah <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 Frank Rowand <frowand.list@gmail.com>, Knut Omang <knut.omang@oracle.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Josh Poimboeuf <jpoimboe@redhat.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Kees Cook <keescook@google.com>, linux-fsdevel@vger.kernel.org,
 Logan Gunthorpe <logang@deltatee.com>, Kevin Hilman <khilman@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

> On Mon, Jul 8, 2019 at 4:16 PM Brendan Higgins <brendanhiggins@google.com> wrote:
>>
>> CC'ing Iurii Zaikin
>>
>> On Fri, Jul 5, 2019 at 1:48 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
>> >
>> > On Wed, Jul 03, 2019 at 05:36:15PM -0700, Brendan Higgins wrote:
>> > > Add entry for the new proc sysctl KUnit test to the PROC SYSCTL section.
>> > >
>> > > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
>> > > Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> > > Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
>> > > Acked-by: Luis Chamberlain <mcgrof@kernel.org>
>> >
>> > Come to think of it, I'd welcome Iurii to be added as a maintainer,
>> > with the hope Iurii would be up to review only the kunit changes. Of
>> > course if Iurii would be up to also help review future proc changes,
>> > even better. 3 pair of eyeballs is better than 2 pairs.
>>
>> What do you think, Iurii?

I'm in.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
